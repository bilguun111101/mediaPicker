//
//  AVCaptureDeviceInput+Extensions.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import AVKit

extension AVCaptureDeviceInput {
    convenience init?(_ device: AVCaptureDevice?) {
        if let device { try? self.init(device: device) }
        else { return nil }
    }
}
