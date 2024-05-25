//
//  Color+Extensions.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

extension Color {
    static var accent: Color = .init(hex: 0x087F8C)
    static var yellow: Color = .init(hex: 0xF0C808)
    static var red: Color = .init(hex: 0xD52941)
    static var background: Color = .init(hex: 0x040408)
}
extension UIColor {
    static var accent: UIColor = .init(hex: 0x087F8C)
    static var yellow: UIColor = .init(hex: 0xF0C808)
    static var red: UIColor = .init(hex: 0xD52941)
    static var background: UIColor = .init(hex: 0x040408)
}


fileprivate extension Color {
    init(hex: UInt) { self.init(.sRGB, red: Double((hex >> 16) & 0xff) / 255, green: Double((hex >> 08) & 0xff) / 255, blue: Double((hex >> 00) & 0xff) / 255) }
}
fileprivate extension UIColor {
    convenience init(hex: UInt) { self.init(red: Double((hex >> 16) & 0xff) / 255, green: Double((hex >> 08) & 0xff) / 255, blue: Double((hex >> 00) & 0xff) / 255, alpha: 1) }
}
