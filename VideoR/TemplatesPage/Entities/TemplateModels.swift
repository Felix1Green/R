//
//  TemplateModels.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//

import UIKit


class TemplateModel{
    var TemplateName: String
    var TemplateVideoPath: URL?
    var TemplateView: UIView
    
    init(TemplateName:String, TemplateVideoPath: URL?, TemplateView: UIView?) {
        self.TemplateName = TemplateName
        self.TemplateVideoPath = TemplateVideoPath
        self.TemplateView = TemplateView ?? UIView()
    }
    
    init(){
        self.TemplateName = ""
        self.TemplateVideoPath = nil
        self.TemplateView = UIView()
    }
}
