//
//  LessonPageTransitionController.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//

import UIKit

class LessonPageTransitionController: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return LessonPageConstants.LessonPageFinishTransition.rawValue
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
    }
    

}
