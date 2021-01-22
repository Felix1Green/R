//
//  LessonPageModulePresenter.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import Foundation

class LessonPageModulePresenter: ViewToPresenterLessonPageModuleProtocol {

    // MARK: Properties
    var view: PresenterToViewLessonPageModuleProtocol?
    var interactor: PresenterToInteractorLessonPageModuleProtocol?
    var router: PresenterToRouterLessonPageModuleProtocol?
}

extension LessonPageModulePresenter: InteractorToPresenterLessonPageModuleProtocol {
    
}
