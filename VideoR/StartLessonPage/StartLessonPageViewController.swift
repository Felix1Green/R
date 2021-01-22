//
//  StartLessonPageViewController.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import UIKit

final class StartLessonPageViewController: UIViewController {
	private let output: StartLessonPageViewOutput

    init(output: StartLessonPageViewOutput) {
        self.output = output

        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

	override func viewDidLoad() {
		super.viewDidLoad()

        output.didLoadView()
	}
}

extension StartLessonPageViewController: StartLessonPageViewInput {
}
