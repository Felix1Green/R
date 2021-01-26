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
        self.PageViewController?.TransitionStarted(sender)
    }
    
}
