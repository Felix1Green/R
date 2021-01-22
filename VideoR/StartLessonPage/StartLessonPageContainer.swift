//
//  StartLessonPageContainer.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import UIKit

final class StartLessonPageContainer {
    let input: StartLessonPageModuleInput
	let viewController: UIViewController

	class func assemble(with context: StartLessonPageContext) -> StartLessonPageContainer {
        let interactor = StartLessonPageInteractor()
        let presenter = StartLessonPagePresenter(interactor: interactor)
		let viewController = StartLessonPageViewController(output: presenter)

		presenter.view = viewController
        presenter.moduleOutput = context.moduleOutput

		interactor.output = presenter

        return StartLessonPageContainer(view: viewController, input: presenter)
	}

    private init(view: UIViewController, input: StartLessonPageModuleInput) {
		self.viewController = view
        self.input = input
	}
}

struct StartLessonPageContext {
	weak var moduleOutput: StartLessonPageModuleOutput?
}
