//
//  TemplatesPageRouter.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//  
//

import Foundation
import UIKit

class TemplatesPageRouter: PresenterToRouterTemplatesPageProtocol {
    
    // MARK: Static methods
    static func createModule(viewController: TemplatesPageViewController){
        
        let presenter: ViewToPresenterTemplatesPageProtocol & InteractorToPresenterTemplatesPageProtocol = TemplatesPagePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = TemplatesPageRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = TemplatesPageInteractor()
        viewController.presenter?.interactor?.presenter = presenter
    }
    
}
