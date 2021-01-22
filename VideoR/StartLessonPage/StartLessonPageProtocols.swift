//
//  StartLessonPageProtocols.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import Foundation

protocol StartLessonPageModuleInput {
	var moduleOutput: StartLessonPageModuleOutput? { get }
}

protocol StartLessonPageModuleOutput: class {
}

protocol StartLessonPageViewInput: class {
}

protocol StartLessonPageViewOutput: class {
    func didLoadView()
}

protocol StartLessonPageInteractorInput: class {
}

protocol StartLessonPageInteractorOutput: class {
}
