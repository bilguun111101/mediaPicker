//
//  CameraConfiguration.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

struct CameraConfig {
    var cameraErrorView: ErrorViewBuilder = DefaultCameraErrorView.init
    var cameraView: CameraViewBuilder = DefaultCameraView.init
    var mediaPreviewView: PreviewViewBuilder? = DefaultCameraPreview.init

    var appDelegate: MApplicationDelegate.Type? = nil

    var onImageCaptured: (Data) -> () = { _ in }
    var onVideoCaptured: (URL) -> () = { _ in }
    var afterMediaCaptured: () -> () = {}
    var onCloseController: () -> () = {}
}
