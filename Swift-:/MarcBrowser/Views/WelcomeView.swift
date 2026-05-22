import SwiftUI

struct WelcomeView: View {
    @Binding var isPresented: Bool
    var onDismiss: (() -> Void)?

    @State private var opacity: Double = 0
    @State private var scale: CGFloat = 0.9

    var body: some View {
        ZStack {
            // 黑色背景
            Color.black
                .ignoresSafeArea()
                .opacity(opacity)

            // 主内容
            VStack(spacing: 20) {
                // 应用图标
                Image(systemName: "globe")
                    .font(.system(size: 60, weight: .light))
                    .foregroundColor(.white)

                // 应用名称
                Text("MarcStar")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .foregroundColor(.white)

                // 副标题
                Text("简约高效的浏览器")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white.opacity(0.7))

                // 提示
                Text("点击任意处开始")
                    .font(.system(size: 13))
                    .foregroundColor(.white.opacity(0.4))
                    .padding(.top, 20)
            }
        }
        .scaleEffect(scale)
        .onAppear {
            // 丝滑入场动画
            withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                opacity = 1
                scale = 1
            }

            // 1.5秒后自动消失
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                dismiss()
            }
        }
        .onTapGesture {
            dismiss()
        }
    }

    private func dismiss() {
        withAnimation(.easeInOut(duration: 0.3)) {
            opacity = 0
            scale = 0.95
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            isPresented = false
            onDismiss?()
        }
    }
}