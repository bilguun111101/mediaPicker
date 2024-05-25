//
//  UIView+Extensions.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

extension UIView {
    func applyBlurEffect(style: UIBlurEffect.Style, animationDuration: Double) {
        let blurEffectView = UIVisualEffectView()
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        UIView.animate(withDuration: animationDuration) { blurEffectView.effect = UIBlurEffect(style: style) }

        addSubview(blurEffectView)
    }
}
