//
//  Section1Template.swift
//  BackendDrivenSwiftUI
//
//  Created by Ege Eke on 29.01.2021.
//

import SwiftUI

struct Section1Model: Codable {
    let title: String
    let imageSystemName: String
}

struct Section1Template: UITemplate {
    
    let model: Section1Model
    
    let id: String = TemplateType.section1.rawValue
    
    func renderView() -> AnyView {
        Section1View(model: model).toAnyView()
    }
}

struct Section1View: View {
    
    let model: Section1Model
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(model.title)
                .font(.title3)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<10) { _ in
                        Image(systemName: model.imageSystemName)
                            .foregroundColor(.pink)
                            .font(.largeTitle)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}


struct Section1View_Previews: PreviewProvider {
    static var previews: some View {
        Section1View(model: Section1Model(title: "Title",
                                          imageSystemName: "star.fill"))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
