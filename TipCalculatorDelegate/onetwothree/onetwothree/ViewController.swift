//
//  ViewController.swift
//  onetwothree
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var process1 = 0
    var process2 = 0
    var process3 = 0
    

    @IBAction func butOne(sender: AnyObject) {
        
        //for (var i=1 ;i<=i+1; i++) {
            process1 = process1+1
            one.text = String(process1)
            summation.text = String(process1+process2+process3)
        //}
    }
    
    @IBAction func butTwo(sender: AnyObject) {
        
        //for (var i=1 ;i<=i+1; i++) {
            process2 = process2+1
            two.text = String(process2)
            summation.text = String(process1+process2+process3)
        //}
    }
    @IBAction func butThree(sender: AnyObject) {
        
        //for (var i=1 ;i<=i+1; i++) {
            process3 = process3+1
            three.text = String(process3)
            summation.text = String(process1+process2+process3)
        //}
    }
    
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var three: UILabel!

    @IBAction func reset(sender: AnyObject) {
        one.text = "0"
        two.text = "0"
        three.text = "0"
        summation.text = "0"
        process1 = 0
        process2 = 0
        process3 = 0
        
    }

    @IBOutlet weak var summation: UILabel!
}

