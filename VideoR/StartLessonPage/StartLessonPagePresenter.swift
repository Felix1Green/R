//
//  StartLessonPagePresenter.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import Foundation

final class StartLessonPagePresenter {
	weak var view: StartLessonPageViewInput?
    weak var moduleOutput: StartLessonPageModuleOutput?

	private let interactor: StartLessonPageInteractorInput

    init(interactor: StartLessonPageInteractorInput) {
        self.interactor = interactor
    }
}

extension StartLessonPagePresenter: StartLessonPageModuleInput {
}

extension StartLessonPagePresenter: StartLessonPageViewOutput {
    func didLoadView() {

    }
}

extension StartLessonPagePresenter: StartLessonPageInteractorOutput {
}
