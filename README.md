# MarcStar

> 极致体验的个人网页浏览器 - 把网页变成 mac 应用

[![GitHub release](https://img.shields.io/github/v/release/mangiapanejohn-dev/marcstar?include_prereleases)](https://github.com/mangiapanejohn-dev/marcstar/releases/latest)
![Platform](https://img.shields.io/badge/platform-macOS-lightgrey)
![License](https://img.shields.io/github/license/mangiapanejohn-dev/marcstar)

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

## 🚀 安装

### 方法一：直接下载

1. 下载 [Latest Release](https://github.com/mangiapanejohn-dev/marcstar/releases/latest)
2. 解压后拖入「应用程序」
3. 首次运行：右键点击应用 → 打开 → 确认

### 方法二：源码编译

```bash
# 克隆项目
git clone https://github.com/mangiapanejohn-dev/marcstar.git
cd marcstar

# 生成 Xcode 项目
xcodegen generate

# 编译 Release 版本
xcodebuild -project MarcBrowser.xcodeproj -scheme MarcBrowser -configuration Release build
```

编译产物在：`~/Library/Developer/Xcode/DerivedData/MarcBrowser-*/Build/Products/Release/MarcStar.app`

## 🛠️ 技术栈

- **SwiftUI** - 现代 UI 框架
- **WebKit** - 强大网页渲染
- **AppKit** - 原生 macOS 体验
- **MVVM** - 架构模式

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE)

---

Made with ❤️ by [MarcStar](https://github.com/mangiapanejohn-dev)