//
//  TemplatesPageContract.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewTemplatesPageProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterTemplatesPageProtocol {
    
    var view: PresenterToViewTemplatesPageProtocol? { get set }
    var interactor: PresenterToInteractorTemplatesPageProtocol? { get set }
    var router: PresenterToRouterTemplatesPageProtocol? { get set }
    
    func TemplatePageLoading() -> [TemplateModel]
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorTemplatesPageProtocol {
    
    var presenter: InteractorToPresenterTemplatesPageProtocol? { get set }
    
    func GetTemplatesInformation() -> [TemplateModel]
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterTemplatesPageProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterTemplatesPageProtocol {
    
}
