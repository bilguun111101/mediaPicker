//
//  ButtonScaleStyle.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

struct ButtonScaleStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View { configuration
        .label
        .scaleEffect(configuration.isPressed ? 0.96 : 1)
    }
}
