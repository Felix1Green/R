//
//  TemplatesPagePresenter.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//  
//

import Foundation

class TemplatesPagePresenter: ViewToPresenterTemplatesPageProtocol {

    // MARK: Properties
    var view: PresenterToViewTemplatesPageProtocol?
    var interactor: PresenterToInteractorTemplatesPageProtocol?
    var router: PresenterToRouterTemplatesPageProtocol?
}

extension TemplatesPagePresenter: InteractorToPresenterTemplatesPageProtocol {
    func TemplatePageLoading() -> [TemplateModel]{
        return interactor!.GetTemplatesInformation()
    }
}
