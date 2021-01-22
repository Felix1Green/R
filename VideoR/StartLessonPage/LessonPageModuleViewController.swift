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
        dataSource = self
        delegate = self
        
        if let vc = self.PageList.first{
            setViewControllers([vc], direction: .forward, animated: true, completion:nil)
        }
    }
}


extension LessonPageModuleViewController: PresenterToViewLessonPageModuleProtocol{
    
}


extension LessonPageModuleViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate
{
    func InitiateViewController(item: (String, LessonVideoModel)) -> UIViewController?{
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: item.0) else{
            return nil
        }
        if let vc = viewController as? LessonPageSingleViewController{
            vc.InitiateView(ParentPageController: self, ViewObject: item.1)
            return vc
        }
        return viewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let IndexOfViewController = self.PageList.firstIndex(of: viewController) else{
            return nil
        }
        
        if IndexOfViewController - 1 < 0 || IndexOfViewController - 1 > self.PageList.count{
            return nil
        }
        return self.PageList[IndexOfViewController]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let indexOfViewController = self.PageList.firstIndex(of: viewController) else{
            return nil
        }
        
        if indexOfViewController + 1 > self.PageList.count{
            return nil
        }
        return self.PageList[indexOfViewController]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return self.PageList.count
    }
}
