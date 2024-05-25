//
//  Public+MCameraView.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI
import AVFoundation
import MijickTimer

public protocol MCameraView: View {
    var cameraManager: CameraManager { get }
    var namespace: Namespace.ID { get }
    var closeControllerAction: () -> () { get }
}

public extension MCameraView {
    func createCameraView() -> some View { CameraInputBridgeView(cameraManager).equatable() }
}

// MARK: - Use-only Logic Methods
public extension MCameraView {
    func captureOutput() { cameraManager.captureOutput() }
    func changeOutputType(_ type: CameraOutputType) throws { try cameraManager.changeOutputType(type) }
    func changeCamera(_ position: CameraPosition) throws { try cameraManager.changeCamera(position) }
    func changeZoomFactor(_ value: CGFloat) throws { try cameraManager.changeZoomFactor(value) }
    func changeFlashMode(_ mode: CameraFlashMode) throws { try cameraManager.changeFlashMode(mode) }
    func changeTorchMode(_ mode: CameraTorchMode) throws { try cameraManager.changeTorchMode(mode) }
    func changeMirrorOutputMode(_ shouldMirror: Bool) { cameraManager.changeMirrorMode(shouldMirror) }
    func changeGridVisibility(_ shouldShowGrid: Bool) { cameraManager.changeGridVisibility(shouldShowGrid) }
}

// MARK: - Flags
public extension MCameraView {
    var outputType: CameraOutputType { cameraManager.outputType }
    var cameraPosition: CameraPosition { cameraManager.cameraPosition }
    var torchMode: CameraTorchMode { cameraManager.torchMode }
    var flashMode: CameraFlashMode { cameraManager.flashMode }
    var mirrorOutput: Bool { cameraManager.mirrorOutput }
    var showGrid: Bool { cameraManager.isGridVisible }
    var deviceOrientation: AVCaptureVideoOrientation { cameraManager.deviceOrientation }
    var isRecording: Bool { cameraManager.isRecording }
    var recordingTime: MTime { cameraManager.recordingTime }
    var hasTorch: Bool { cameraManager.hasTorch }
    var hasFlash: Bool { cameraManager.hasFlash }
}
