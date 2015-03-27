//
//  ViewController.swift
//  Week7PartII
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    let fish = UIImageView()
   
    let duration = 2.0
    let delay = 0.0
    let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.container.frame = CGRect(x: 90, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        self.container.addSubview(self.redSquare)
    }

    @IBAction func animateButtonTapped(sender: AnyObject) {
        
        var views: (frontView: UIView, backView: UIView)
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        let views2 = (frontView: self.redSquare, backView: self.blueSquare)
        
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
        
        
        fish.image = UIImage(named: "duck.png")
        fish.frame = CGRect(x: 40, y: 50, width: 50, height: 50)
        self.view.addSubview(fish)
        let fullRotation = CGFloat(M_PI * 2)
        UIView.animateWithDuration(1.0, animations: {
            self.fish.transform = CGAffineTransformMakeRotation(fullRotation)
        })
        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
             
                self.fish.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                self.fish.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                self.fish.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
            })
            }, completion: {finished in
                
        })
    
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

