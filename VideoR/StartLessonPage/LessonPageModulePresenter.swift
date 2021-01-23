//
//  LessonPageModulePresenter.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import Foundation

class LessonPageModulePresenter: ViewToPresenterLessonPageModuleProtocol {
    func ControllerLoadingWithViewControllers() -> Array<(String, LessonVideoModel)> {
        return interactor!.GetLessonPageVideoEntities()
    }
    

    // MARK: Properties
    var view: PresenterToViewLessonPageModuleProtocol?
    var interactor: PresenterToInteractorLessonPageModuleProtocol?
    var router: PresenterToRouterLessonPageModuleProtocol?
}

extension LessonPageModulePresenter: InteractorToPresenterLessonPageModuleProtocol {
    
}
