//
//  Public+MCameraController.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//


import SwiftUI

public extension MCameraController {
    func outputType(_ type: CameraOutputType) -> Self { setAndReturnSelf { $0.cameraManager.change(outputType: type) } }
    func cameraPosition(_ position: CameraPosition) -> Self { setAndReturnSelf { $0.cameraManager.change(cameraPosition: position) } }
    func flashMode(_ flashMode: CameraFlashMode) -> Self { setAndReturnSelf { $0.cameraManager.change(flashMode: flashMode) } }
    func gridVisible(_ visible: Bool) -> Self { setAndReturnSelf { $0.cameraManager.change(isGridVisible: visible) } }
    func focusImage(_ focusImage: UIImage) -> Self { setAndReturnSelf { $0.cameraManager.change(focusImage: focusImage) } }
    func focusImageColor(_ color: UIColor) -> Self { setAndReturnSelf { $0.cameraManager.change(focusImageColor: color) } }
    func focusImageSize(_ size: CGFloat) -> Self { setAndReturnSelf { $0.cameraManager.change(focusImageSize: size) } }
    func lockOrientation(_ appDelegate: MApplicationDelegate.Type) -> Self { setAndReturnSelf { $0.config.appDelegate = appDelegate; $0.cameraManager.lockOrientation() } }
}

public extension MCameraController {
    func cameraScreen(_ builder: @escaping CameraViewBuilder) -> Self { setAndReturnSelf { $0.config.cameraView = builder } }
    func mediaPreviewScreen(_ builder: PreviewViewBuilder?) -> Self { setAndReturnSelf { $0.config.mediaPreviewView = builder } }
    func errorScreen(_ builder: @escaping ErrorViewBuilder) -> Self { setAndReturnSelf { $0.config.cameraErrorView = builder } }
}

public extension MCameraController {
    func onImageCaptured(_ action: @escaping (Data) -> ()) -> Self { setAndReturnSelf { $0.config.onImageCaptured = action } }
    func onVideoCaptured(_ action: @escaping (URL) -> ()) -> Self { setAndReturnSelf { $0.config.onVideoCaptured = action } }
    func afterMediaCaptured(_ action: @escaping () -> ()) -> Self { setAndReturnSelf { $0.config.afterMediaCaptured = action } }
    func onCloseController(_ action: @escaping () -> ()) -> Self { setAndReturnSelf { $0.config.onCloseController = action } }
}
