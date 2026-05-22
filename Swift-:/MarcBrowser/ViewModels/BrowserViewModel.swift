import SwiftUI
import WebKit
import Combine
import AppKit

class BrowserViewModel: NSObject, ObservableObject {
    @Published var currentURL: String = "https://x.com/home"
    @Published var currentTitle: String = "Marc*"
    @Published var isLoading: Bool = false
    @Published var showURLInput: Bool = false
    @Published var showHistory: Bool = false
    @Published var feedbackMessage: String?
    @Published var showFeedback: Bool = false

    // Callbacks for menu commands
    var onToggleURL: (() -> Void)?
    var onToggleHistory: (() -> Void)?

    let webView: WKWebView
    let keyboardTracker = KeyboardTracker()
    let settings = AppSettings.shared

    private var cancellables = Set<AnyCancellable>()

    override init() {
        let config = WKWebViewConfiguration()
        config.websiteDataStore = .default()
        config.preferences.javaScriptCanOpenWindowsAutomatically = true

        // Use custom web view that handles first responder properly
        self.webView = CustomWebView(frame: .zero, configuration: config)
        self.webView.allowsBackForwardNavigationGestures = true
        self.webView.allowsMagnification = true

        super.init()

        setupKeyboardShortcuts()
        loadInitialPage()
    }

    private func loadInitialPage() {
        guard let url = URL(string: currentURL) else { return }
        webView.load(URLRequest(url: url))
        settings.addToHistory(url: currentURL, title: "x.com/home")
    }

    private func setupKeyboardShortcuts() {
        keyboardTracker.onSpacePressed3Times = { [weak self] in
            self?.copyCurrentURL()
        }

        keyboardTracker.onCmdSpacePressed = { [weak self] in
            self?.refresh()
        }

        keyboardTracker.onCmdOptionPressed = { [weak self] in
            self?.exportAsPNG()
        }

        keyboardTracker.onOptionControlPressed = { [weak self] in
            self?.openInDefaultBrowser()
        }
    }

    func handleKeyEvent(_ event: NSEvent) {
        keyboardTracker.handleKeyDown(event: event)
    }

    // MARK: - Actions

    func copyCurrentURL() {
        let url = webView.url?.absoluteString ?? currentURL
        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(url, forType: .string)
        showFeedbackMessage("Copied!")
        settings.addToHistory(url: url, title: currentTitle)
    }

    func refresh() {
        webView.reload()
        showFeedbackMessage("Refreshed")
    }

    func exportAsPNG() {
        let savePanel = NSSavePanel()
        savePanel.allowedContentTypes = [.png]
        savePanel.nameFieldStringValue = "screenshot.png"

        savePanel.begin { [weak self] response in
            guard response == .OK, let url = savePanel.url else { return }
            self?.captureWebView(to: url)
        }
    }

    private func captureWebView(to url: URL) {
        let config = WKSnapshotConfiguration()
        config.snapshotWidth = NSNumber(value: 1200)

        webView.takeSnapshot(with: config) { image, error in
            guard let image = image, error == nil else {
                DispatchQueue.main.async {
                    self.showFeedbackMessage("Export failed")
                }
                return
            }

            if let tiffData = image.tiffRepresentation,
               let bitmap = NSBitmapImageRep(data: tiffData),
               let pngData = bitmap.representation(using: .png, properties: [:]) {
                do {
                    try pngData.write(to: url)
                    DispatchQueue.main.async {
                        self.showFeedbackMessage("Exported!")
                    }
                } catch {
                    DispatchQueue.main.async {
                        self.showFeedbackMessage("Export failed")
                    }
                }
            }
        }
    }

    func openInDefaultBrowser() {
        guard let url = webView.url else { return }
        NSWorkspace.shared.open(url)
        showFeedbackMessage("Opened in browser")
    }

    func navigateTo(urlString: String) {
        var formattedURL = urlString.trimmingCharacters(in: .whitespacesAndNewlines)

        if !formattedURL.contains("://") {
            if !formattedURL.hasPrefix("http://") && !formattedURL.hasPrefix("https://") {
                formattedURL = "https://" + formattedURL
            }
        }

        guard let url = URL(string: formattedURL) else {
            showFeedbackMessage("Invalid URL")
            return
        }

        currentURL = formattedURL
        webView.load(URLRequest(url: url))
        settings.addToHistory(url: formattedURL, title: url.host ?? formattedURL)
        showURLInput = false
    }

    func loadFromHistory(_ item: HistoryItem) {
        guard let url = URL(string: item.url) else { return }
        currentURL = item.url
        webView.load(URLRequest(url: url))
        showHistory = false
    }

    func toggleURLInput() {
        withAnimation(.easeInOut(duration: 0.3)) {
            showURLInput.toggle()
        }
    }

    func toggleHistory() {
        withAnimation(.easeInOut(duration: 0.3)) {
            showHistory.toggle()
        }
    }

    private func showFeedbackMessage(_ message: String) {
        feedbackMessage = message
        showFeedback = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            withAnimation {
                self?.showFeedback = false
            }
        }
    }
}

import AppKit

extension BrowserViewModel: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        currentTitle = webView.title ?? "Marc*"
        if let url = webView.url?.absoluteString {
            currentURL = url
        }
        isLoading = false
    }

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        isLoading = true
    }
}