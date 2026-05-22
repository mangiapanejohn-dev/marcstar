# Marc* - macOS Browser App Specification

## 1. Project Overview
- **Project Name**: Marc*
- **Bundle Identifier**: com.marc.browser
- **Core Functionality**: A minimalist full-screen macOS browser app that opens x.com (Twitter), with advanced keyboard shortcuts for quick actions within 1.5-second time windows.
- **Target Users**: Power users who want quick browser access with keyboard-driven workflows
- **macOS Version Support**: macOS 13.0+ (Ventura and later)

## 2. UI/UX Specification

### Window Structure
- **Main Window**: Single full-screen window (NSWindow with .fullSizeContentView style)
- **Window Behavior**: 
  - Title bar hidden (transparent)
  - Top 1/6 of screen for window dragging
  - Rounded corners (system default)
  - Minimum size: 800x600

### Visual Design

#### Color Palette
- **Background**: #000000 (Pure black for web content)
- **Primary Accent**: #1D9BF0 (Twitter/X blue)
- **Glass Background**: rgba(255, 255, 255, 0.1) (Liquid glass effect)
- **Glass Border**: rgba(255, 255, 255, 0.2)
- **Text Primary**: #FFFFFF
- **Text Secondary**: #8B98A5

#### Typography
- **Font Family**: SF Pro (system font)
- **Heading**: SF Pro Bold, 24pt
- **Body**: SF Pro Regular, 16pt
- **Caption**: SF Pro Regular, 12pt

#### Spacing System (8pt grid)
- **Window Padding**: 0px (full screen)
- **Input Field Padding**: 16px
- **Element Spacing**: 8px, 16px, 24px

### Views & Components

1. **WebView Container**
   - WKWebView filling entire window
   - Background: black
   - States: Loading, Loaded, Error

2. **URL Input Field** (Cmd+U to toggle)
   - Liquid glass effect (NSVisualEffectView with .hudMaterial)
   - Blur radius: 20px
   - Border: 1px, rounded corners (12px)
   - Animation: 300ms ease-in-out scale + opacity

3. **History Panel** (Cmd+X to toggle)
   - Slide-in from right (300ms)
   - List of visited URLs with timestamps
   - Max 50 entries stored

4. **Status Indicator**
   - Shows current action feedback
   - 1.5 second timeout indicator

## 3. Functionality Specification

### Core Features

#### Keyboard Shortcuts (within 1.5s time window)

| Shortcut | Action | Priority |
|---------|--------|---------|
| Space×3 | Copy current page URL | High |
| Cmd+Space | Refresh page | High |
| Cmd+Option | Export page as PNG | High |
| Option+Control | Open in default browser | High |
| Cmd+U | Toggle URL input field | Always |
| Cmd+X | Toggle history panel | Always |
| Cmd+R | Refresh page | Always |
| Cmd+E | Export page as PNG | Always |
| Cmd+O | Open in default browser | Always |

### User Interactions & Flows

1. **App Launch** → Load x.com/home full-screen
2. **Space×3 Detection**:
   - Track space presses within 1.5s window
   - On 3rd press: Copy URL to clipboard
   - Show brief "Copied!" feedback
3. **Cmd+Space Detection**:
   - Single press with Cmd within 1.5s
   - Reload current page
4. **Cmd+Option Detection**:
   - Both keys pressed within 1.5s
   - Capture WKWebView as PNG
   - Save to user-specified location
5. **Option+Control Detection**:
   - Both keys pressed within 1.5s
   - Open current URL in system default browser

### Data Handling
- **Local Storage**: UserDefaults for preferences
- **History**: Stored in UserDefaults (JSON encoded, max 50 items)
- **No API calls**: Pure browser functionality

### Architecture Pattern
- **Pattern**: MVVM (Model-View-ViewModel)
- **Structure**:
  - Models: HistoryItem, AppSettings
  - ViewModels: BrowserViewModel, HistoryViewModel
  - Views: ContentView, URLInputView, HistoryView

### Edge Cases & Error Handling
- Network error: Show error view with retry option
- Invalid URL: Show validation message
- Export failure: Show alert dialog

## 4. Technical Specification

### Dependencies
- **WebKit**: WKWebView (system framework)
- **SwiftUI**: UI framework

### UI Framework
- **Primary**: SwiftUI
- **WebView Integration**: WKWebView via UIViewRepresentable

### Asset Requirements
- **App Icon**: IMG_3851.PNG (to be converted to .icns)
- **No additional images required**

### File Structure
```
MarcBrowser/
├── App/
│   ├── MarcBrowserApp.swift
│   └── AppDelegate.swift
├── Models/
│   ├── HistoryItem.swift
│   └── AppSettings.swift
├── ViewModels/
│   └── BrowserViewModel.swift
├── Views/
│   ├── ContentView.swift
│   ├── WebBrowserView.swift
│   ├── URLInputView.swift
│   └── HistoryView.swift
├── Utilities/
│   ├── KeyboardTracker.swift
│   └── Extensions.swift
├── Resources/
│   └── Assets.xcassets
└── Supporting/
    └── Info.plist
```