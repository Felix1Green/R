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
    static func createModule() -> UIViewController {
        
        let viewController = LessonPageModuleViewController()
        
        let presenter: ViewToPresenterLessonPageModuleProtocol & InteractorToPresenterLessonPageModuleProtocol = LessonPageModulePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = LessonPageModuleRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = LessonPageModuleInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
