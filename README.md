<div align="center">

<img src="Swift-:/Resources/icon-128.png" width="112" alt="MarcStar"/>

# MarcStar

**One page. Zero browser clutter.**

A focused macOS browser built with SwiftUI and WebKit—designed to turn any website into a clean, app-like workspace.

<a href="https://star.marcyy.me"><img src="https://img.shields.io/badge/website-star.marcyy.me-CC785C?style=flat&logo=safari&logoColor=white" alt="Website"/></a>
<img src="https://img.shields.io/badge/macOS-13+-262624?style=flat&logo=apple&logoColor=white" alt="macOS 13+"/>
<img src="https://img.shields.io/badge/SwiftUI-native-A6431F?style=flat&logo=swift&logoColor=white" alt="SwiftUI"/>
<img src="https://img.shields.io/github/stars/mangiapanejohn-dev/marcstar?style=flat&color=CC785C&label=stars" alt="Stars"/>

</div>

![MarcStar preview](marcStar-website/marcstar_ultimate_final_desktop_1/screen.png)

## Why it exists

Browsers are built for twenty tabs.

MarcStar is built for one thing at a time.

Open a site, remove the chrome, keep the shortcuts, and let it behave like a native macOS app.

## What it does

- Native <code>WKWebView</code> rendering
- Minimal, borderless interface
- URL input and local history
- Full-page PNG export
- Fast keyboard actions
- Open the current page in your default browser
- SwiftUI + AppKit, structured with MVVM

## Shortcuts

| Action | Shortcut |
|---|---|
| URL input | <kbd>⌘ U</kbd> |
| History | <kbd>⌘ X</kbd> |
| Refresh | <kbd>⌘ R</kbd> |
| Export PNG | <kbd>⌘ E</kbd> |
| Open in browser | <kbd>⌘ O</kbd> |
| Shortcut guide | <kbd>⌘ C</kbd> |

## Run it

Requirements: macOS 13+ and Xcode.

~~~bash
git clone https://github.com/mangiapanejohn-dev/marcstar.git
cd marcstar
open "Swift-:/MarcBrowser.xcodeproj"
~~~

Select the <code>MarcBrowser</code> scheme and press Run.

## Repository map

| Path | What is inside |
|---|---|
| <code>Swift-:/MarcBrowser</code> | Native macOS app |
| <code>Swift-:/README.md</code> | Full English documentation |
| <code>Swift-:/README_ZH.md</code> | 中文文档 |
| <code>marcStar-website</code> | Product website and visual assets |

## Stack

<code>Swift</code> · <code>SwiftUI</code> · <code>WebKit</code> · <code>AppKit</code> · <code>MVVM</code>

## License

MIT — see <a href="Swift-:/LICENSE">LICENSE</a>.

<div align="center">

Built by <a href="https://marcyy.me">Marc</a>.  
Less browser. More web.

</div>
