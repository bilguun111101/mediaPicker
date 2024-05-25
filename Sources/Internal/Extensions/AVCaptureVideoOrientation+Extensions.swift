//
//  AVCaptureVideoOrientation+Extensions.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI
import AVKit

extension AVCaptureVideoOrientation {
    func getAngle() -> Angle { switch self {
        case .portrait: .degrees(0)
        case .landscapeLeft: .degrees(-90)
        case .landscapeRight: .degrees(90)
        case .portraitUpsideDown: .degrees(180)
        default: .degrees(0)
    }}
}
