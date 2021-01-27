//
//  LessonPageTransitionController.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//

import UIKit

class LessonPageTransitionController: NSObject, UIViewControllerAnimatedTransitioning {
    
    private var originFrame: CGRect
    private var animationDuration: TimeInterval
    var startingPoint = CGPoint.zero
    
    init(frame: CGRect, startingPoint: CGPoint){
        self.originFrame = frame
        self.animationDuration = LessonPageDoubleConstants.LessonPageFinishTransition.rawValue
        self.startingPoint = startingPoint
    }
    
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return self.animationDuration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let containerView = transitionContext.containerView
        guard let presentedView = transitionContext.view(forKey: .to) else{
            return
        }
        let viewCenter = presentedView.center
        let viewSize = presentedView.frame.size
        guard let pageVC = transitionContext.viewController(forKey: .from) as? LessonPageModuleViewController,
              let fromVC = pageVC.PageList.last as? LessonPageAuthViewController else{
            return
        }
        
        let buttonTransitionView = fromVC.GetStartedButton
        containerView.addSubview(buttonTransitionView!)
        
        presentedView.center = self.startingPoint
        presentedView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
        presentedView.alpha = 0
        containerView.addSubview(presentedView)
        
        // MARK: Animation
        UIView.animateKeyframes(withDuration: self.animationDuration, delay: 0.0, options: .beginFromCurrentState, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1/3, animations: {
                titleLabelHideMask.center.y += 5.0
                fromVC.GetStartedButton.titleLabel?.center.y -= 10.0
                
            })
            
            UIView.addKeyframe(withRelativeStartTime: 1/3, relativeDuration: 1/3, animations: {
                
            })
            
            UIView.addKeyframe(withRelativeStartTime: 2/3, relativeDuration: 1/3, animations: {
                
            })
            
            
        }, completion: {_ in
            toVC.view.isHidden = false
            snapshot.removeFromSuperview()
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })
    }
    

}
