//
//  asdaPresenter.swift
//  VideoR
//
//  Created by Aydar on 23.01.2021.
//  
//

import Foundation

class asdaPresenter: ViewToPresenterasdaProtocol {

    // MARK: Properties
    var view: PresenterToViewasdaProtocol?
    var interactor: PresenterToInteractorasdaProtocol?
    var router: PresenterToRouterasdaProtocol?
}

extension asdaPresenter: InteractorToPresenterasdaProtocol {
    
}
