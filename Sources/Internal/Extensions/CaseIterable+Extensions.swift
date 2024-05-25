//
//  CaseIterable+Extensions.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

extension CaseIterable where Self: Equatable {
    func next() -> Self { let allCases = Self.allCases
        let index = allCases.firstIndex(of: self)!
        let nextIndex = allCases.index(after: index)
        return allCases[nextIndex == allCases.endIndex ? allCases.startIndex : nextIndex]
    }
}
