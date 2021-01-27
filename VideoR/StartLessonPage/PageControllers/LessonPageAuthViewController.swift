//
//  LessonPageAuthViewController.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//

import UIKit

class LessonPageAuthViewController: UIViewController {
    weak var PageViewController: LessonPageModuleViewController?
    @IBOutlet var GetStartedButton: UIButton!
    @IBOutlet var StartText: UILabel!
    @IBOutlet var ContinueWithAppleID: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func InitiateView(ParentViewController: LessonPageModuleViewController){
        self.PageViewController = ParentViewController
    }
    
    @IBAction func getStartedButtonPressed(_ sender: Any) {
        guard let viewControllerToPresent = storyboard?.instantiateViewController(withIdentifier: LessonPageIdentifiers.TemplatePageControllerIdentifier.rawValue)
        else{
            fatalError("nothing to present")
        }
        viewControllerToPresent.transitioningDelegate = self
        self.present(viewControllerToPresent, animated: true, completion: nil)
    }
    
}


extension LessonPageAuthViewController: UIViewControllerTransitioningDelegate{
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return LessonPageTransitionController(frame: self.view.frame, startingPoint: self.GetStartedButton.center)
    }
}
