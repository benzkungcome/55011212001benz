//
//  ViewController.swift
//  WirelessLab7
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {
   
    var square: UIView!
   
    var animator: UIDynamicAnimator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square = UIView(frame: CGRect(x: 0, y: 120, width: 50, height: 50))
        square.backgroundColor = UIColor.blueColor()
        self.view.addSubview(square)
        
        UIView.animateWithDuration(1.0, animations: {
            self.square.backgroundColor = UIColor.redColor()
            self.square.frame = CGRect(x: 220-50, y: 120, width: 50, height: 50)
        })
        
        let duration = 1.0
        let delay = 2.0
        let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut
        let damping = 0.5
        let velocity = 10.0
        
        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            self.square.backgroundColor = UIColor.blueColor()
            self.square.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
            }, completion: { finished in
        
        })
        
    }
    @IBOutlet weak var numberOfFish: UISlider!
    
    @IBAction func animateButton(sender: AnyObject) {
        let numberOfAunji = Int(self.numberOfFish.value)
        
        for loopNumber in 1...numberOfAunji{
            
            let duration: NSTimeInterval = 1.0
            let delay: NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            let size: CGFloat = CGFloat(arc4random_uniform(40))+20
            let yPosition: CGFloat = CGFloat(arc4random_uniform(500))+20
            
            let fish = UIImageView()
            fish.image = UIImage(named: "duck.png")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
        
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            fish.frame = CGRectMake(320-size, yPosition, size, size)
            
            }, completion: { animationFinished in
                fish.removeFromSuperview()
            })
        }
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

