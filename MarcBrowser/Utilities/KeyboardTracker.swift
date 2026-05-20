import Foundation
import AppKit

struct KeyPress {
    let key: String
    let modifiers: NSEvent.ModifierFlags
    let timestamp: Date

    static let timeWindow: TimeInterval = 1.5
}

class KeyboardTracker: ObservableObject {
    @Published var spacePressCount: Int = 0
    @Published var lastSpacePressTime: Date?

    private var spaceTimer: Timer?
    private var lastResetTime: Date?

    var onSpacePressed3Times: (() -> Void)?
    var onCmdSpacePressed: (() -> Void)?
    var onCmdOptionPressed: (() -> Void)?
    var onOptionControlPressed: (() -> Void)?

    func handleKeyDown(event: NSEvent) {
        let now = Date()

        // Track space presses within 1.5s window
        if event.keyCode == 49 { // Space key
            if let lastTime = lastSpacePressTime {
                if now.timeIntervalSince(lastTime) <= KeyPress.timeWindow {
                    spacePressCount += 1
                } else {
                    spacePressCount = 1
                }
            } else {
                spacePressCount = 1
            }

            lastSpacePressTime = now
            spaceTimer?.invalidate()
            spaceTimer = Timer.scheduledTimer(withTimeInterval: KeyPress.timeWindow, repeats: false) { [weak self] _ in
                self?.spacePressCount = 0
                self?.lastSpacePressTime = nil
            }

            if spacePressCount >= 3 {
                onSpacePressed3Times?()
                spacePressCount = 0
                lastSpacePressTime = nil
            }
        }

        // Command + Space (within 1.5s)
        if event.keyCode == 49 && event.modifierFlags.contains(.command) &&
           event.modifierFlags.contains(.option) == false && event.modifierFlags.contains(.control) == false {
            if let lastTime = lastSpacePressTime, now.timeIntervalSince(lastTime) <= KeyPress.timeWindow {
                onCmdSpacePressed?()
                spacePressCount = 0
                lastSpacePressTime = nil
            }
        }

        // Command + Option
        if event.modifierFlags.contains(.command) && event.modifierFlags.contains(.option) {
            onCmdOptionPressed?()
        }

        // Option + Control
        if event.modifierFlags.contains(.option) && event.modifierFlags.contains(.control) {
            onOptionControlPressed?()
        }
    }

    func reset() {
        spacePressCount = 0
        lastSpacePressTime = nil
        spaceTimer?.invalidate()
    }
}