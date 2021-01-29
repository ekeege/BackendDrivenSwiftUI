//
//  View+Extension.swift
//  BackendDrivenSwiftUI
//
//  Created by Ege Eke on 29.01.2021.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        return AnyView(self)
    }
}
