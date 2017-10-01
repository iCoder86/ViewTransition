//
//  ViewController.swift
//  TransitionOnView
//
//  Created by Mehul on 29/09/17.
//  Copyright © 2017 Mehul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redCard: UIView!
    @IBOutlet weak var blueCard: UIView!
    var isFliped = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func switchAction(_ sender: UIButton) {
        isFliped = !isFliped
        
        let fromView = (isFliped) ? redCard : blueCard
        let toView = (isFliped) ? blueCard : redCard
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.3, options: [(isFliped) ? .transitionFlipFromLeft : .transitionFlipFromRight,.showHideTransitionViews])
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

