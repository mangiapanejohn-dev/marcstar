import Foundation

struct HistoryItem: Codable, Identifiable, Equatable {
    let id: UUID
    let url: String
    let title: String
    let timestamp: Date

    init(url: String, title: String) {
        self.id = UUID()
        self.url = url
        self.title = title
        self.timestamp = Date()
    }
}