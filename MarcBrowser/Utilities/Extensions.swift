import Foundation
import AppKit
import SwiftUI

enum Extensions {
    static var appIcon: NSImage? {
        NSImage(contentsOfFile: "/Users/t-bug/Downloads/IMG_3851.PNG")
    }
}

extension NSImage {
    func pngData() -> Data? {
        guard let tiffData = self.tiffRepresentation,
              let bitmap = NSBitmapImageRep(data: tiffData) else {
            return nil
        }
        return bitmap.representation(using: .png, properties: [:])
    }
}

extension Color {
    static let twitterBlue = Color(red: 29/255, green: 155/255, blue: 240/255)
}