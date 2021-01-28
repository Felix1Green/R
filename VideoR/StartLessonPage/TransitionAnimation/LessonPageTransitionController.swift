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
        let buttonTransitionView = StartPageButton(frame: fromVC.GetStartedButton.frame, titleLabelText: fromVC.GetStartedButton.titleLabel!.attributedText!)
        buttonTransitionView.center = self.startingPoint
    
        containerView.addSubview(buttonTransitionView)
        
        presentedView.center = self.startingPoint
        presentedView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
        presentedView.alpha = 0
        containerView.addSubview(presentedView)
        
        
        let titleFrame = buttonTransitionView.titleLabel!.frame
        let titleLabelHideMask = UIView(frame: CGRect(x: titleFrame.origin.x, y: titleFrame.origin.y, width: titleFrame.width, height: (buttonTransitionView.frame.height - titleFrame.height)/2))
        titleLabelHideMask.backgroundColor = .white
        titleLabelHideMask.center = self.startingPoint
        containerView.addSubview(titleLabelHideMask)
        titleLabelHideMask.frame.origin.y += titleFrame.height/2 + titleLabelHideMask.frame.height/2
        
        
        // MARK: Animation
        UIView.animateKeyframes(withDuration: self.animationDuration, delay: 0.0, options: .beginFromCurrentState, animations: {
            
        
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 2/3, animations: {
                buttonTransitionView.titleLabel?.center.y += titleFrame.height
                titleLabelHideMask.frame.size.height = titleFrame.height
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/3, animations: {
                buttonTransitionView.transform = CGAffineTransform(scaleX: 50, y: 50)
            })
            
            UIView.addKeyframe(withRelativeStartTime: 2/3, relativeDuration: 1/3, animations: {
                
            })
            
            
        }, completion: {_ in
            presentedView.alpha = 1
            presentedView.transform = CGAffineTransform.identity
            presentedView.center = viewCenter
            titleLabelHideMask.removeFromSuperview()
            buttonTransitionView.removeFromSuperview()
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })
    }
    

}
