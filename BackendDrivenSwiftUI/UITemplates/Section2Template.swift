//
//  Section2Template.swift
//  BackendDrivenSwiftUI
//
//  Created by Ege Eke on 29.01.2021.
//

import SwiftUI

struct Section2Model: Codable {
    let title: String
}

struct Section2Template: UITemplate {
    
    let model: Section2Model
    
    let id: String = TemplateType.section2.rawValue
    
    func renderView() -> AnyView {
        Section2View(model: model).toAnyView()
    }
}

struct Section2View: View {
    
    let model: Section2Model
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(model.title)
                .font(.title3)
            
            ForEach(0..<2) { _ in
                VStack {
                    Text(model.title)
                        .foregroundColor(Color(.systemBackground))
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(Color.blue.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top)
            }
        }
    }
}

struct Section2View_Previews: PreviewProvider {
    static var previews: some View {
        Section2View(model: Section2Model(title: "Title"))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
