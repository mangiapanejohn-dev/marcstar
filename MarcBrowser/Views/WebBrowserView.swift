import AppKit
import SwiftUI
import WebKit

// Custom WKWebView subclass to ensure keyboard input works
class CustomWebView: WKWebView {
    override var acceptsFirstResponder: Bool { true }

    override func becomeFirstResponder() -> Bool {
        return true
    }

    override func keyDown(with event: NSEvent) {
        super.keyDown(with: event)
    }
}

struct WebBrowserView: NSViewRepresentable {
    let webView: WKWebView

    func makeNSView(context: Context) -> WKWebView {
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            NotificationCenter.default.post(name: .webViewDidFinish, object: nil, userInfo: ["url": webView.url?.absoluteString ?? ""])
        }

        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            NotificationCenter.default.post(name: .webViewDidStart, object: nil)
        }
    }
}

extension Notification.Name {
    static let webViewDidFinish = Notification.Name("webViewDidFinish")
    static let webViewDidStart = Notification.Name("webViewDidStart")
}