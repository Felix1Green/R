//
//  LessonPageModuleContract.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewLessonPageModuleProtocol {
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterLessonPageModuleProtocol {
    
    var view: PresenterToViewLessonPageModuleProtocol? { get set }
    var interactor: PresenterToInteractorLessonPageModuleProtocol? { get set }
    var router: PresenterToRouterLessonPageModuleProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorLessonPageModuleProtocol {
    
    var presenter: InteractorToPresenterLessonPageModuleProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterLessonPageModuleProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterLessonPageModuleProtocol {
    
}
