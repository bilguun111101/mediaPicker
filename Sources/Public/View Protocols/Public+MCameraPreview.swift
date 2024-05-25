//
//  Public+MCameraPreview.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

public protocol MCameraPreview: View {
    var capturedMedia: MCameraMedia { get }
    var namespace: Namespace.ID { get }
    var retakeAction: () -> () { get }
    var acceptMediaAction: () -> () { get }
}
