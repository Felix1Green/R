//
//  LessonPageModuleRouter.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import Foundation
import UIKit

class LessonPageModuleRouter: PresenterToRouterLessonPageModuleProtocol {
    
    // MARK: Static methods
    static func createModule(viewController: LessonPageModuleViewController) {
        
        let presenter: ViewToPresenterLessonPageModuleProtocol & InteractorToPresenterLessonPageModuleProtocol = LessonPageModulePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = LessonPageModuleRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = LessonPageModuleInteractor.instance
        viewController.presenter?.interactor?.presenter = presenter
    }
    
}
