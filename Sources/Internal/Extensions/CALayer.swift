//
//  CALayer.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

extension CALayer {
    var superview: UIView? { superlayer?.delegate as? UIView }
}
