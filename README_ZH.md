# MarcStar

<p align="center">
  <img src="Resources/icon-128.png" width="128" alt="MarcStar">
</p>

<p align="center">
  <a href="https://github.com/mangiapanejohn-dev/marcstar/releases/latest">
    <img src="https://img.shields.io/github/v/release/mangiapanejohn-dev/marcstar?include_prereleases&style=for-the-badge&color=2ea44f" alt="发布">
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/github/license/mangiapanejohn-dev/marcstar?style=for-the-badge&color=informational" alt="许可证">
  </a>
  <img src="https://img.shields.io/github/downloads/mangiapanejohn-dev/marcstar/total?style=for-the-badge&color=4078c0" alt="下载">
  <img src="https://img.shields.io/github/stars/mangiapanejohn-dev/marcstar?style=for-the-badge&color=e4a854" alt="星标">
</p>

> 极致体验的个人网页浏览器 - 把任意网页变成 mac 原生应用

**[English](README.md)** | **[中文](README_ZH.md)** | **[下载](https://github.com/mangiapanejohn-dev/marcstar/releases/latest)** | **[讨论](https://github.com/mangiapanejohn-dev/marcstar/discussions)**

---

## ✨ 为什么选择 MarcStar？

<p align="center">
  <img src="https://user-images.githubusercontent.com/86168195/20250520-marcstar-demo.gif" width="800" alt="演示">
</p>

### 🎨 极简美学

| 传统浏览器 | MarcStar |
|--------------------|---------|
| 🔲 多标签乱糟糟 | 🎯 单一页面，专注 |
| 🔲 功能繁杂 | ⚡ 只为你想要的 |
| 🔲 无快捷键 | ⌨️ 1.5秒极速 |
| 🔲 启动慢 | 🚀 丝滑动画 |

### 🔥 核心功能

- [x] **欢迎界面** - 丝滑启动动画
- [x] **快捷键帮助** - Cmd+C 一键查看
- [x] **历史记录** - 最多50条存储
- [x] **PNG导出** - 整页截图
- [x] **液态玻璃** - 输入框动效
- [x] **全屏浏览** - 隐藏标题栏

---

## ⌨️ 快捷键

| 快捷键 | 触发条件 | 功能 |
|---------|---------|--------|
| <kbd>空格</kbd> × 3 | 1.5秒内 | 📋 复制网址 |
| <kbd>Cmd</kbd> + <kbd>空格</kbd> | 1.5秒内 | 🔄 刷新 |
| <kbd>Cmd</kbd> + <kbd>Option</kbd> | 1.5秒内 | 📸 导出PNG |
| <kbd>Option</kbd> + <kbd>Control</kbd> | 1.5秒内 | 🌐 浏览器打开 |
| <kbd>Cmd</kbd> + <kbd>C</kbd> | 随时 | 📖 快捷键帮助 |
| <kbd>Cmd</kbd> + <kbd>U</kbd> | 随时 | 🔍 网址输入框 |
| <kbd>Cmd</kbd> + <kbd>X</kbd> | 随时 | 📜 历史记录 |
| <kbd>Cmd</kbd> + <kbd>R</kbd> | 随时 | 🔄 刷新 |
| <kbd>Cmd</kbd> + <kbd>E</kbd> | 随时 | 💾 导出PNG |
| <kbd>Cmd</kbd> + <kbd>O</kbd> | 随时 | 🌐 用浏览器打开 |

---

## 📦 安装

### 方式一：下载 (推荐)

1. 下载 [Latest Release](https://github.com/mangiapanejohn-dev/marcstar/releases/latest)
2. 解压 `MarcStar.zip`
3. 拖入「**应用程序**」
4. 首次运行：右键 → 打开 → 确认

```bash
# 命令行安装
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
```

---

## 🛠️ 技术栈

```
┌─────────────────────────────────┐
│         MarcStar 架构           │
├─────────────────────────────────┤
│  SwiftUI     │    UI 框架     │
│  WebKit     │  网页渲染    │
│  AppKit     │  macOS 原生  │
│   MVVM      │    架构      │
└─────────────────────────────────┘
```

| 组件 | 技术 |
|-----|------|
| UI | SwiftUI |
| 浏览器 | WKWebView |
| 架构 | MVVM |
| 目标 | macOS 13.0+ |

---

## 🤝 贡献

1. Fork 项目
2. 创建分支: `git checkout -b feature/xxx`
3. 提交: `git commit -m 'feat: xxx'`
4. 推送: `git push origin feature/xxx`
5. 提交 PR

详见 [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 📄 许可证

MIT License - 见 [LICENSE](LICENSE)

---

## ⭐ 支持

如果喜欢，请点个 ⭐

<p align="center">
  <img src="https://api.star-history.com/svg?repos=mangiapanejohn-dev/marcstar&type=Date&theme=light" width="400">
</p>

---

<p align="center">
  用 ❤️ 制作 by <a href="https://github.com/mangiapanejohn-dev">MarcStar</a>
</p>