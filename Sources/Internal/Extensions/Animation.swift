//
//  Animation.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

extension Animation {
    static var defaultSpring: Animation { .spring(response: 0.4, dampingFraction: 1, blendDuration: 0.1) }
    static var defaultEase: Animation { .easeInOut(duration: 0.32) }
}
