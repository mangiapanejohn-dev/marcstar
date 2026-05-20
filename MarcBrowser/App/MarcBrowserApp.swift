import SwiftUI

@main
struct MarcBrowserApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var browserViewModel = BrowserViewModel()
    @State private var showWelcome: Bool = true
    @State private var showShortcuts: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView(showWelcome: $showWelcome, showShortcuts: $showShortcuts)
                .environmentObject(browserViewModel)
                .frame(minWidth: 800, minHeight: 600)
        }
        .windowStyle(.hiddenTitleBar)
        .windowResizability(.contentSize)
    }
}