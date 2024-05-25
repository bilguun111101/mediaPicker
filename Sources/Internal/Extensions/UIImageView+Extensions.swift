//
//  UIImageView+Extensions.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

extension UIImageView {
    static func create(image: ImageResource, tintColor: UIColor, size: CGFloat) -> UIImageView {
        let imageView = UIImageView(image: .init(resource: image))
        imageView.tintColor = tintColor
        imageView.frame.size = .init(width: size, height: size)
        return imageView
    }
}
