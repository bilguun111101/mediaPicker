//
//  ScreenManager.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

class ScreenManager {}
extension ScreenManager {
    static var safeArea: (top: CGFloat, bottom: CGFloat) { (current.top, current.bottom) }
}
private extension ScreenManager {
    static var current: UIEdgeInsets { UIApplication.shared.windows.first?.safeAreaInsets ?? .zero }
}
