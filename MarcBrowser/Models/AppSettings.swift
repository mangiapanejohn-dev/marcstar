import Foundation

class AppSettings: ObservableObject {
    static let shared = AppSettings()

    private let defaults = UserDefaults.standard

    @Published var history: [HistoryItem] {
        didSet {
            saveHistory()
        }
    }

    private let historyKey = "com.marc.browser.history"
    private let maxHistoryItems = 50

    private init() {
        if let data = defaults.data(forKey: historyKey),
           let items = try? JSONDecoder().decode([HistoryItem].self, from: data) {
            self.history = items
        } else {
            self.history = []
        }
    }

    func addToHistory(url: String, title: String) {
        let item = HistoryItem(url: url, title: title)
        history.insert(item, at: 0)
        if history.count > maxHistoryItems {
            history = Array(history.prefix(maxHistoryItems))
        }
        saveHistory()
    }

    private func saveHistory() {
        if let data = try? JSONEncoder().encode(history) {
            defaults.set(data, forKey: historyKey)
        }
    }

    func clearHistory() {
        history = []
        saveHistory()
    }
}