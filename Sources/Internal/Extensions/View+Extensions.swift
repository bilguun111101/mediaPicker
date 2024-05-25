//
//  View+Extensions.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import SwiftUI

extension View {
    @ViewBuilder func isActive(_ value: Bool) -> some View { ZStack {
        if value { self }
    }}
    @ViewBuilder func isActiveStackElement(_ value: Bool) -> some View {
        if value { self }
    }
}

extension View {
    func erased() -> AnyView { .init(self) }
}

extension View {
    func setAndReturnSelf(_ body: (inout Self) -> Void) -> Self {
        var result = self
        body(&result)
        return result
    }
}
