import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var viewModel: BrowserViewModel

    var body: some View {
        HStack {
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.3))
        .overlay(alignment: .trailing) {
            VStack(spacing: 0) {
                HStack {
                    Text("History")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                    Spacer()
                    Button(action: { viewModel.showHistory = false }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 14))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    .buttonStyle(.plain)
                }
                .padding()
                .background(Color.white.opacity(0.05))
                divider

                if viewModel.settings.history.isEmpty {
                    VStack {
                        Spacer()
                        Text("No history")
                            .font(.system(size: 14))
                            .foregroundColor(.white.opacity(0.5))
                        Spacer()
                    }
                } else {
                    ScrollView {
                        LazyVStack(spacing: 0) {
                            ForEach(viewModel.settings.history) { item in
                                HistoryRowView(item: item) {
                                    viewModel.loadFromHistory(item)
                                }
                            }
                        }
                    }
                }
            }
            .frame(width: 320)
            .background(Color.black.opacity(0.8))
        }
    }

    private var divider: some View {
        Rectangle()
            .fill(Color.white.opacity(0.1))
            .frame(height: 1)
    }
}

struct HistoryRowView: View {
    let item: HistoryItem
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .lineLimit(1)
                Text(item.url)
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.5))
                    .lineLimit(1)
                Text(formatDate(item.timestamp))
                    .font(.system(size: 10))
                    .foregroundColor(.white.opacity(0.3))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.vertical, 12)
            .background(Color.clear)
        }
        .buttonStyle(.plain)
        .onHover { isHovering in
            // Could add hover effect here
        }
    }

    private func formatDate(_ date: Date) -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .abbreviated
        return formatter.localizedString(for: date, relativeTo: Date())
    }
}