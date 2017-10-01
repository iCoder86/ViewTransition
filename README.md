# ViewTransition

<a href="https://github.com/iCoder86/ViewTransition/blob/master/TransitionOnView/TransitionOnView/ViewTransition.gif" title="made at imgflip.com"/></a>

    @IBAction func switchAction(_ sender: UIButton) {
        isFliped = !isFliped
        
        let fromView = (isFliped) ? redCard : blueCard
        let toView = (isFliped) ? blueCard : redCard
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.3, options: [(isFliped) ? .transitionFlipFromLeft : .transitionFlipFromRight,.showHideTransitionViews])
        
    }
