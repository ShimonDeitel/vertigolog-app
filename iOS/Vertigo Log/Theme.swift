import SwiftUI

/// Unique visual identity for Vertigo Log: calm indigo with warning amber, evoking equilibrium.
enum Theme {
    static let accent = Color(hex: "#5B6ABF")
    static let accentSecondary = Color(hex: "#F2A65A")
    static let background = Color(hex: "#F3F1FA")
    static let ink = Color(hex: "#1B1B2E")

    static var titleFont: Font {
        Font.system(.largeTitle, design: .default).weight(.bold)
    }

    static var bodyFont: Font {
        Font.system(.body, design: .default)
    }

    static var cardCornerRadius: CGFloat { 18 }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
