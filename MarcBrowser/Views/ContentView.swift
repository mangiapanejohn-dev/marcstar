import SwiftUI
import AppKit
import Combine

struct ContentView: View {
    @EnvironmentObject var viewModel: BrowserViewModel
    @Binding var showWelcome: Bool
    @Binding var showShortcuts: Bool
    @State private var urlInput: String = ""
    @FocusState private var isURLInputFocused: Bool
    @State private var eventMonitor: Any?

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            WebBrowserView(webView: viewModel.webView)
                .ignoresSafeArea()
                .opacity(showWelcome ? 0 : 1)

            if viewModel.showURLInput {
                URLInputView(text: $urlInput, isFocused: $isURLInputFocused) {
                    viewModel.navigateTo(urlString: urlInput)
                }
                .transition(.scale.combined(with: .opacity))
                .onAppear {
                    urlInput = viewModel.currentURL
                    isURLInputFocused = true
                }
            }

            if viewModel.showHistory {
                HistoryView()
                    .environmentObject(viewModel)
                    .transition(.move(edge: .trailing))
            }

            if viewModel.showFeedback {
                VStack {
                    Spacer()
                    Text(viewModel.feedbackMessage ?? "")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(8)
                        .padding(.bottom, 50)
                }
                .transition(.opacity)
            }

            if showWelcome {
                WelcomeView(isPresented: $showWelcome)
            }

            if showShortcuts {
                KeyboardShortcutsView(isPresented: $showShortcuts)
            }
        }
        .background(Color.black)
        .onReceive(NotificationCenter.default.publisher(for: .webViewDidFinish)) { notification in
            if let url = notification.userInfo?["url"] as? String {
                viewModel.currentURL = url
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: .showShortcuts)) { _ in
            withAnimation(.easeOut(duration: 0.2)) {
                showShortcuts.toggle()
            }
        }
        .onAppear {
            setupKeyboardMonitor()
        }
        .onDisappear {
            if let monitor = eventMonitor {
                NSEvent.removeMonitor(monitor)
            }
        }
    }

    private func setupKeyboardMonitor() {
        eventMonitor = NSEvent.addLocalMonitorForEvents(matching: .keyDown) { event in
            let flags = event.modifierFlags.intersection(.deviceIndependentFlagsMask)

            // Cmd+U - Toggle URL input
            if flags.contains(.command) && event.keyCode == 32 {
                viewModel.toggleURLInput()
                return nil
            }

            // Cmd+X - Toggle history
            if flags.contains(.command) && event.keyCode == 7 {
                viewModel.toggleHistory()
                return nil
            }

            // Cmd+R - Refresh
            if flags.contains(.command) && event.keyCode == 15 {
                viewModel.refresh()
                return nil
            }

            // Cmd+E - Export PNG
            if flags.contains(.command) && event.keyCode == 14 {
                viewModel.exportAsPNG()
                return nil
            }

            // Cmd+O - Open in browser
            if flags.contains(.command) && event.keyCode == 31 {
                viewModel.openInDefaultBrowser()
                return nil
            }

            // Cmd+C - Shortcuts help
            if flags.contains(.command) && event.keyCode == 8 {
                showShortcuts.toggle()
                return nil
            }

            // Track 1.5s window shortcuts
            viewModel.handleKeyEvent(event)

            return event
        }
    }
}