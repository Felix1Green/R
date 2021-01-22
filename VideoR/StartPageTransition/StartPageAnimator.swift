//
//  StartPagePresenter.swift
//  templateRenderingProject
//
//  Created by Aydar on 13.08.2020.
//  Copyright © 2020 Aydar. All rights reserved.
//

import UIKit

class StartPagePresenter: NSObject,UIViewControllerAnimatedTransitioning {
    
    private var originFrame: CGRect
    
    init(originFrame: CGRect){
        self.originFrame = originFrame
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return CustomAnimationDuration.StartPageSegueSwitchAnimation.rawValue
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let container = transitionContext.containerView
        let toView = transitionContext.view(forKey: .to)
        let toViewController = transitionContext.viewController(forKey: .to)
        do{
            
        }
        do{
            
        }
    }
    
    
    

}


class StartPageDismisser: NSObject, UIViewControllerAnimatedTransitioning{
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        <#code#>
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        <#code#>
    }
    
    
}
