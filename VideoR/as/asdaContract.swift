//
//  asdaContract.swift
//  VideoR
//
//  Created by Aydar on 23.01.2021.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewasdaProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterasdaProtocol {
    
    var view: PresenterToViewasdaProtocol? { get set }
    var interactor: PresenterToInteractorasdaProtocol? { get set }
    var router: PresenterToRouterasdaProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorasdaProtocol {
    
    var presenter: InteractorToPresenterasdaProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterasdaProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterasdaProtocol {
    
}
