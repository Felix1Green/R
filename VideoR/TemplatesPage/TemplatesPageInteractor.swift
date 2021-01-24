//
//  TemplatesPageInteractor.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//  
//

import Foundation

class TemplatesPageInteractor: PresenterToInteractorTemplatesPageProtocol {

    var TemplateModels: [TemplateModel]
    var presenter: InteractorToPresenterTemplatesPageProtocol?
    
    init(){
        self.TemplateModels = [
            TemplateModel(TemplateName: "TestTemplate", TemplateVideoPath: nil, TemplateView: nil),
            TemplateModel(TemplateName: "TestTemplate2", TemplateVideoPath: nil, TemplateView: nil)
        ]
    }
}


extension TemplatesPageInteractor{
    func GetTemplatesInformation()-> [TemplateModel]{
        return self.TemplateModels
    }
}
