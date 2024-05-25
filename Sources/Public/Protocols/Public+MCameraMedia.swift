//
//  Public+MCameraMedia.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

public protocol MApplicationDelegate: UIApplicationDelegate {
    static var orientationLock: UIInterfaceOrientationMask { get set }

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
}
