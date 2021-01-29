//
//  HomeViewModel.swift
//  BackendDrivenSwiftUI
//
//  Created by Ege Eke on 29.01.2021.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var title: String = ""
    
    @Published var section1: UITemplate?
    @Published var section2: UITemplate?
    
    init() {
        loadTemplates()
    }
    
    func loadTemplates() {
        
        let sharedTemplate: TemplateResponseModel = Bundle.main.loadFor("response.json")
        
        title = sharedTemplate.title
        
        sharedTemplate.templates.forEach { template in
            
            switch template.type {
            case .section1:
                guard let sectionlModel: Section1Model = template.info.decode() else { return }
                
                DispatchQueue.main.async {
                    self.section1 = Section1Template(model: sectionlModel)
                }
            case .section2:
                guard let section2Model: Section2Model = template.info.decode() else { return }
                
                DispatchQueue.main.async {
                    self.section2 = Section2Template(model: section2Model)
                }
            }
        }
    }
}
