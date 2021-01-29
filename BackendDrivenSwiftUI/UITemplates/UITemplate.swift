//
//  UITemplate.swift
//  BackendDrivenSwiftUI
//
//  Created by Ege Eke on 29.01.2021.
//

import SwiftUI

protocol UITemplate {
    var id: TemplateType.RawValue { get }
    func renderView() -> AnyView //TODO: Avoid type-erasure
}

//MARK: Template Response
struct TemplateResponseModel: Decodable {
    let title: String
    let templates: [Template]
}

struct Template: Decodable {
    let type: TemplateType
    let info: [String: String]
}

enum TemplateType: String, Decodable {
    case section1
    case section2
}
