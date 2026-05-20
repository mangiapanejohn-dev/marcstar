<h1 align="center">
  <img src="https://raw.githubusercontent.com/mangiapanejohn-dev/marcstar/main/MarcBrowser/Resources/Assets.xcassets/AppIcon.appiconset/icon_128x128.png" width="128" alt="MarcStar">
  <br>
  <b>MarcStar</b>
</h1>

<p align="center">
  极致体验的个人网页浏览器 | 把网页变成 mac 原生应用
  <br>
  <a href="https://github.com/mangiapanejohn-dev/marcstar/releases/latest">
    <img src="https://img.shields.io/github/v/release/mangiapanejohn-dev/marcstar?include_prereleases&color=blue" alt="Release">
  </a>
  <img src="https://img.shields.io/github/last-commit/mangiapanejohn-dev/marcstar/main?color=green" alt="Last Commit">
  <img src="https://img.shields.io/github/stars/mangiapanejohn-dev/marcstar?style=social" alt="Stars">
  <img src="https://img.shields.io/github/license/mangiapanejohn-dev/marcstar?color=yellow" alt="License">
</p>

---

## ✨ 为什么选择 MarcStar？

> 把任意网页变成 macOS 原生应用，极简美学 + 极致体验

| 传统浏览器 | MarcStar |
|-----------|--------|
| 多标签乱糟糟 | 🎯 单一网页，极简专注 |
| 功能繁杂 | ⚡ 只为你想要的 |
| 无快捷键 | ⌨️ 1.5秒极速操作 |
| 启动慢 | 🚀 丝滑动画 |

### 🎨 极简美学

```
┌─────────────────────────────┐
│ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ │  ← 纯净黑
│ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ │  ← 全屏
│ ▓▓▓▓    网页内容    ▓▓▓▓ │
│ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ │  ← 沉浸
│ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ │
└─────────────────────────────┘
```

### ⌨️ 快捷键 (1.5秒时间窗口)

| 你按的是 | 触发条件 | 📋 执行结果 |
|---------|---------|-----------|
| `Space × 3` | 1.5秒内按3次 | 📋 复制网址 |
| `Cmd + Space` | 1.5秒内 | 🔄 刷新页面 |
| `Cmd + Option` | 1.5秒内 | 📸 导出PNG |
| `Option + Control` | 1.5秒内 | 🌐 浏览器打开 |
| `Cmd + C` | 随时 | 📖 快捷键帮助 |
| `Cmd + U` | 随时 | 🔍 网址输入框 |
| `Cmd + X` | 随时 | 📜 历史记录 |
| `Cmd + R` | 随时 | 🔄 刷新 |
| `Cmd + E` | 随时 | 💾 导出PNG |
| `Cmd + O` | 随时 | 🌐 用浏览器打开 |

### 🔥 核心功能

- [x] **欢迎界面** - 丝滑启动动画
- [x] **快捷键帮助** - Cmd+C 一键查看
- [x] **历史记录** - 最多50条存储
- [x] **PNG导出** - 整页截图
- [x] **液态玻璃** - 输入框动效
- [x] **全屏浏览** - 隐藏标题栏

---

## 📦 安装

### 方式一：下载 Release (推荐)

1. 打开 [Latest Release](https://github.com/mangiapanejohn-dev/marcstar/releases/latest)
2. 下载 `MarcStar.zip`
3. 解压 → 拖入「应用程序」
4. 首次运行：右键 → 打开 → 确认

```bash
# 或者命令行安装
unzip MarcStar.zip -d ~/Applications/
```

### 方式二：源码编译

```bash
# 克隆
git clone https://github.com/mangiapanejohn-dev/marcstar.git
cd marcstar

# 安装 XcodeGen
brew install xcodegen

# 生成项目
xcodegen generate

# 编译
xcodebuild -project MarcBrowser.xcodeproj \
  -scheme MarcBrowser \
  -configuration Release \
  -derivedDataPath ./build \
  build

# 找到产物
open build/Build/Products/Release/
```

---

## 🛠️ 技术栈

```
SwiftUI          ──────►  UI 框架
   │
WebKit          ──────►  ���页渲染
   │
AppKit          ──────►  macOS 原生
   │
MVVM            ──────►  架构
```

| 组件 | 技术 |
|-----|------|
| UI | SwiftUI |
| 浏览器 | WKWebView |
| 架构 | MVVM |
| 目标 | macOS 13.0+ |

---

## 🤝 贡献

欢迎贡献！请看 [贡献指南](CONTRIBUTING.md)

1. Fork
2. 创建分支 `git checkout -b feature/xxx`
3. 提交 `git commit -m 'feat: xxx'`
4. 推送 `git push origin feature/xxx`
5. 提 PR

---

## 📄 许可证

MIT License - 看 [LICENSE](LICENSE)

---

## ⭐ 支持

如果喜欢，点个 Star ⭐

<p align="center">
  <img src="https://api.star-history.com/svg?repos=mangiapanejohn-dev/marcstar&type=Date" width="400">
</p>

---

<p align="center">
  <b>Made with ❤️ by <a href="https://github.com/mangiapanejohn-dev">MarcStar</a></b>
</p>