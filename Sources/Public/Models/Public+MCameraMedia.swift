//
//  Public+MCameraMedia.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import Foundation

public struct MCameraMedia {
    private let data: Any?

    init(data: Any?) { self.data = data }
}

public extension MCameraMedia {
    var image: Data? { data as? Data }
    var video: URL? { data as? URL }
}

extension MCameraMedia: Equatable {
    public static func == (lhs: MCameraMedia, rhs: MCameraMedia) -> Bool { lhs.image == rhs.image && lhs.video == rhs.video }
}
