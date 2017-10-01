# ViewTransition

<a href="https://imgflip.com/gif/1wuid6"><img src="https://i.imgflip.com/1wuid6.gif" title="made at imgflip.com"/></a>

    @IBAction func switchAction(_ sender: UIButton) {
        isFliped = !isFliped
        
        let fromView = (isFliped) ? redCard : blueCard
        let toView = (isFliped) ? blueCard : redCard
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.3, options: [(isFliped) ? .transitionFlipFromLeft : .transitionFlipFromRight,.showHideTransitionViews])
        
    }
