//
//  CameraUtilities.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import AVKit

extension CameraPosition {
    func get() -> AVCaptureDevice.Position { switch self {
        case .back: .back
        case .front: .front
    }}
}

extension CameraFlashMode {
    func get() -> AVCaptureDevice.FlashMode { switch self {
        case .off: .off
        case .on: .on
        case .auto: .auto
    }}
}

extension CameraTorchMode {
    func get() -> AVCaptureDevice.TorchMode { switch self {
        case .off: .off
        case .on: .on
    }}
}
