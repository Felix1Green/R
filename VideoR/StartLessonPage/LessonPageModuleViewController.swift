//
//  LessonPageModuleViewController.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import UIKit

class LessonPageModuleViewController: UIPageViewController {
    private(set) lazy var PageList: [UIViewController] = {
        let Pages = LessonsDataSource.instance.GetLessonPageViewControllers()
        var VCList: [UIViewController] = []
        for item in Pages{
            VCList.append(self.InitiateViewController(item: item)!)
        }
        return VCList
    }()
    
    var presenter: ViewToPresenterLessonPageModuleProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LessonPageModuleViewController: PresenterToViewLessonPageModuleProtocol{
    func InitiateViewController(item: (String, LessonVideoModel)) -> UIViewController?{
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: item.0) as? LessonPageSingleViewController else{
            return nil
        }
        viewController.InitiateView(ParentPageController: self, ViewObject: item.1)
        return viewController
    }
}
