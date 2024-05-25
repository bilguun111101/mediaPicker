//
//  Public+CameraUtilities.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

public enum CameraOutputType: CaseIterable {
    case photo
    case video
}

public enum CameraPosition: CaseIterable {
    case back
    case front
}

public enum CameraFlashMode: CaseIterable {
    case off
    case on
    case auto
}

public enum CameraTorchMode: CaseIterable {
    case off
    case on
}

public typealias CameraViewBuilder = (CameraManager, Namespace.ID, _ closeControllerAction: @escaping () -> ()) -> any MCameraView
public typealias PreviewViewBuilder = (MCameraMedia, Namespace.ID, _ retakeAction: @escaping () -> (), _ acceptMediaAction: @escaping () -> ()) -> any MCameraPreview
public typealias ErrorViewBuilder = (CameraManager.Error, _ closeControllerAction: @escaping () -> ()) -> any MCameraErrorView
