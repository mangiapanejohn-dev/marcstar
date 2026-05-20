import SwiftUI
import AppKit

struct URLInputView: View {
    @Binding var text: String
    @FocusState.Binding var isFocused: Bool
    var onSubmit: () -> Void

    var body: some View {
        VStack {
            HStack {
                TextField("Enter URL", text: $text)
                    .textFieldStyle(.plain)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .padding()
                    .focused($isFocused)
                    .onSubmit(onSubmit)

                Button(action: onSubmit) {
                    Image(systemName: "arrow.right.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.white.opacity(0.8))
                }
                .buttonStyle(.plain)
                .padding(.trailing)
            }
            .background(
                VisualEffectView(material: .hudWindow, blendingMode: .behindWindow)
                    .backgroundStyle(.ultraThinMaterial)
            )
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.white.opacity(0.2), lineWidth: 1)
            )
        }
        .padding(.horizontal, 40)
        .padding(.top, 80)
    }
}