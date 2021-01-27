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
//        guard let pageVC = transitionContext.viewController(forKey: .from) as?
//              LessonPageModuleViewController,
//              let toVC = transitionContext.viewController(forKey: .to),
//              let fromVC = pageVC.PageList.last as? LessonPageAuthViewController,
//              let snapshot = pageVC.view.snapshotView(afterScreenUpdates: true)
//        else{
//            return
//        }
//        let containerView = transitionContext.containerView
//        _ = transitionContext.finalFrame(for: toVC)
//        snapshot.frame = originFrame
//
//        // MARK: Setting params for containerView
//        containerView.addSubview(toVC.view)
//        containerView.addSubview(snapshot)
//        toVC.view.isHidden = true
//
//        // MARK: Transition view
//
//        // MARK: Subviews for animation
//        let titleLabelHideMask = UIView(frame: fromVC.GetStartedButton.frame)
//        titleLabelHideMask.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        containerView.addSubview(titleLabelHideMask)
        
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
