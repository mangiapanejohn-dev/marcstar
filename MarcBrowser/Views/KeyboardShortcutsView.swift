import SwiftUI

struct KeyboardShortcutsView: View {
    @Binding var isPresented: Bool

    var body: some View {
        ZStack {
            // 半透明背景
            Color.black.opacity(0.85)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation(.easeOut(duration: 0.2)) {
                        isPresented = false
                    }
                }

            // 主内容卡片
            VStack(spacing: 24) {
                // 标题
                Text("快捷键")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .foregroundColor(.white)

                // 快捷键列表
                VStack(spacing: 12) {
                    KeyboardShortcutRow(keys: "空格×3 (1.5秒内)", action: "复制当前页面网址")
                    KeyboardShortcutRow(keys: "Cmd + 空格 (1.5秒内)", action: "刷新网页")
                    KeyboardShortcutRow(keys: "Cmd + Option (1.5秒内)", action: "导出页面为 PNG")
                    KeyboardShortcutRow(keys: "Option + Control (1.5秒内)", action: "用默认浏览器打开")
                    KeyboardShortcutRow(keys: "Cmd + U", action: "网址输入框")
                    KeyboardShortcutRow(keys: "Cmd + X", action: "访问历史记录")
                    KeyboardShortcutRow(keys: "Cmd + R", action: "刷新")
                    KeyboardShortcutRow(keys: "Cmd + E", action: "导出 PNG")
                    KeyboardShortcutRow(keys: "Cmd + O", action: "用浏览器打开")
                    KeyboardShortcutRow(keys: "Cmd + C", action: "快捷键帮助")
                }
                .padding(.vertical, 8)

                // 底部提示
                Text("按 ESC 或点击空白处关闭")
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.4))
                    .padding(.top, 8)
            }
            .padding(32)
            .background(
                VisualEffectView(material: .hudWindow, blendingMode: .behindWindow)
                    .backgroundStyle(.ultraThinMaterial)
            )
            .cornerRadius(20)
            .shadow(radius: 20)
            .frame(maxWidth: 400)
        }
        .opacity(isPresented ? 1 : 0)
    }
}

struct KeyboardShortcutRow: View {
    let keys: String
    let action: String

    var body: some View {
        HStack {
            Text(keys)
                .font(.system(size: 14, weight: .semibold, design: .monospaced))
                .foregroundColor(.white)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(Color.white.opacity(0.15))
                .cornerRadius(6)

            Spacer()

            Text(action)
                .font(.system(size: 14))
                .foregroundColor(.white.opacity(0.7))
        }
        .padding(.horizontal, 16)
    }
}