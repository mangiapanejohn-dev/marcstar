# MarcStar

> 极致体验的个人网页浏览器 - 把网页变成 mac 应用

<p align="center">
  <img src="Resources/Assets.xcassets/AppIcon.appiconset/icon_512x512.png" width="128" height="128" alt="MarcStar Icon">
</p>

<p align="center">
  <a href="https://github.com/marcstar/marcstar/releases/latest">
    <img src="https://img.shields.io/github/v/release/marcstar/marcstar?include_prereleases&style=flat-square" alt="GitHub release">
  </a>
  <img src="https://img.shields.io/github/platforms/marcstar/marcstar?style=flat-square" alt="Platform">
  <img src="https://img.shields.io/github/license/marcstar/marcstar?style=flat-square" alt="License">
</p>

## ✨ 特性

- **极简美学** - 纯净黑色界面，沉浸式浏览体验
- **全屏浏览** - 就像原生应用一样流畅
- **智能快捷键** - 1.5秒时间窗口内快速执行操作
- **欢迎界面** - 丝滑启动动画
- **快捷键帮助** - 一键查看所有操作
- **历史记录** - 访问过的网页都在这里
- **导出 PNG** - 快速截图整个页面

## ⌨️ 快捷键

| 快捷键 | 功能 |
|--------|------|
| `空格×3` (1.5秒内) | 复制当前页面网址 |
| `Cmd + 空格` (1.5秒内) | 刷新网页 |
| `Cmd + Option` (1.5秒内) | 导出页面为 PNG |
| `Option + Control` (1.5秒内) | 用默认浏览器打开 |
| `Cmd + U` | 网址输入框 |
| `Cmd + X` | 访问历史记录 |
| `Cmd + R` | 刷新 |
| `Cmd + E` | 导出 PNG |
| `Cmd + O` | 用默认浏览器打开 |
| `Cmd + C` | 快捷键帮助 |

## 📸 截图

<p align="center">
  <img src="screenshot.png" width="800" alt="MarcStar Screenshot">
</p>

## 🚀 安装

### 方法一：直接下载

1. 下载 [Latest Release](https://github.com/marcstar/marcstar/releases/latest)
2. 解压后拖入「应用程序」
3. 首次运行：右键点击应用 → 打开 → 确认

### 方法二：源码编译

```bash
# 克隆项目
git clone https://github.com/marcstar/marcstar.git
cd marcstar

# 生成 Xcode 项目
xcodegen generate

# 编译
xcodebuild -project MarcBrowser.xcodeproj -scheme MarcBrowser -configuration Release build
```

## 🛠️ 技术栈

- **SwiftUI** - 现代 UI 框架
- **WebKit** - 强大网页渲染
- **AppKit** - 原生 macOS 体验
- **WKWebView** - 极速浏览

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE)

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/marcstar">MarcStar</a>
</p>