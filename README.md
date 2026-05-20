# MarcStar

<p align="center">
  <img src="Resources/icon-128.png" width="128" alt="MarcStar">
</p>

<p align="center">
  <a href="https://github.com/mangiapanejohn-dev/marcstar/releases/latest">
    <img src="https://img.shields.io/github/v/release/mangiapanejohn-dev/marcstar?include_prereleases&style=for-the-badge&color=2ea44f" alt="Release">
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/github/license/mangiapanejohn-dev/marcstar?style=for-the-badge&color=informational" alt="License">
  </a>
  <img src="https://img.shields.io/github/downloads/mangiapanejohn-dev/marcstar/total?style=for-the-badge&color=4078c0" alt="Downloads">
  <img src="https://img.shields.io/github/stars/mangiapanejohn-dev/marcstar?style=for-the-badge&color=e4a854" alt="Stars">
</p>

> The minimalist personal web browser - Turn any website into a native macOS app

**[English](README.md)** | **[中文](README_ZH.md)** | **[Download](https://github.com/mangiapanejohn-dev/marcstar/releases/latest)** | **[Discuss](https://github.com/mangiapanejohn-dev/marcstar/discussions)**

---

## ✨ Why MarcStar?

<p align="center">
  <img src="https://user-images.githubusercontent.com/86168195/20250520-marcstar-demo.gif" width="800" alt="Demo">
</p>

### 🎨 Minimalist Aesthetic

| Traditional Browsers | MarcStar |
|--------------------|---------|
| 🔲 Cluttered tabs | 🎯 Single page, focused |
| 🔲 Feature overload | ⚡ Only what you need |
| 🔲 No shortcuts | ⌨️ 1.5s quick actions |
| 🔲 Slow startup | 🚀 Smooth animation |

### 🔥 Core Features

- [x] **Welcome Screen** - Smooth launch animation
- [x] **Keyboard Shortcuts** - Cmd+C for help
- [x] **History** - Up to 50 entries
- [x] **PNG Export** - Full page screenshot
- [x] **Liquid Glass** - Input field effect
- [x] **Fullscreen** - Hidden title bar

---

## ⌨️ Keyboard Shortcuts

| Shortcut | Trigger | Action |
|---------|---------|--------|
| <kbd>Space</kbd> × 3 | Within 1.5s | 📋 Copy URL |
| <kbd>Cmd</kbd> + <kbd>Space</kbd> | Within 1.5s | 🔄 Refresh |
| <kbd>Cmd</kbd> + <kbd>Option</kbd> | Within 1.5s | 📸 Export PNG |
| <kbd>Option</kbd> + <kbd>Control</kbd> | Within 1.5s | 🌐 Open in Browser |
| <kbd>Cmd</kbd> + <kbd>C</kbd> | Anytime | 📖 Shortcuts Help |
| <kbd>Cmd</kbd> + <kbd>U</kbd> | Anytime | 🔍 URL Input |
| <kbd>Cmd</kbd> + <kbd>X</kbd> | Anytime | 📜 History |
| <kbd>Cmd</kbd> + <kbd>R</kbd> | Anytime | 🔄 Refresh |
| <kbd>Cmd</kbd> + <kbd>E</kbd> | Anytime | 💾 Export PNG |
| <kbd>Cmd</kbd> + <kbd>O</kbd> | Anytime | 🌐 Open in Browser |

---

## 📦 Installation

### Option 1: Download (Recommended)

1. Download [Latest Release](https://github.com/mangiapanejohn-dev/marcstar/releases/latest)
2. Extract `MarcStar.zip`
3. Drag to **Applications**
4. First run: Right click → Open → Confirm

```bash
# Or command line
unzip MarcStar.zip -d ~/Applications/
```

### Option 2: Build from Source

```bash
# Clone
git clone https://github.com/mangiapanejohn-dev/marcstar.git
cd marcstar

# Install XcodeGen
brew install xcodegen

# Generate project
xcodegen generate

# Build
xcodebuild -project MarcBrowser.xcodeproj \
  -scheme MarcBrowser \
  -configuration Release \
  -derivedDataPath ./build \
  build
```

---

## 🛠️ Tech Stack

```
┌─────────────────────────────────┐
│         MarcStar Architecture      │
├─────────────────────────────────┤
│  SwiftUI     │    UI Framework  │
│  WebKit     │  Web Rendering │
│  AppKit     │  Native macOS  │
│   MVVM      │   Architecture │
└─────────────────────────────────┘
```

| Component | Tech |
|-----------|------|
| UI | SwiftUI |
| Browser | WKWebView |
| Architecture | MVVM |
| Target | macOS 13.0+ |

---

## 🤝 Contributing

1. Fork the repo
2. Create branch: `git checkout -b feature/xxx`
3. Commit: `git commit -m 'feat: xxx'`
4. Push: `git push origin feature/xxx`
5. Submit PR

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

---

## 📄 License

MIT License - See [LICENSE](LICENSE)

---

## ⭐ Support

If you like this project, please give it a ⭐

<p align="center">
  <img src="https://api.star-history.com/svg?repos=mangiapanejohn-dev/marcstar&type=Date&theme=light" width="400">
</p>

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/mangiapanejohn-dev">MarcStar</a>
</p>