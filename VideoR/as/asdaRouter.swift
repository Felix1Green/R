//
//  asdaRouter.swift
//  VideoR
//
//  Created by Aydar on 23.01.2021.
//  
//

import Foundation
import UIKit

class asdaRouter: PresenterToRouterasdaProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = asdaViewController()
        
        let presenter: ViewToPresenterasdaProtocol & InteractorToPresenterasdaProtocol = asdaPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = asdaRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = asdaInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
