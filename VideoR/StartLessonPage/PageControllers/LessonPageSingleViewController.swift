//
//  LessonPageSingleViewController.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//

import UIKit

class LessonPageSingleViewController: UIViewController {
    var PageViewController: UIPageViewController?
    var ViewObject: LessonVideoModel
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LessonPageSingleViewController{
    func InitiateView(ParentPageController: UIPageViewController, ViewObject: LessonVideoModel){
        self.PageViewController = ParentPageController
        self.ViewObject = ViewObject
    }
}
