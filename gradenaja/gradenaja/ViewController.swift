//
//  ViewController.swift
//  gradenaja
//
//  Created by Supakait Jangpungsir on 3/12/2558 BE.
//  Copyright (c) 2558 Supakait Jangpungsir. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate{
    
    let cellIdentifier = "cellIdentifier"
    var  sortedKey:[String] = []
    

    @IBOutlet weak var thai: UITextField!
    @IBOutlet weak var sci: UITextField!
    @IBOutlet weak var math: UITextField!
    @IBOutlet weak var eng: UITextField!
    @IBOutlet weak var show: UITableView!
    
    @IBAction func cal(sender: UIButton) {
        var numThai = thai.text.toInt()
        var numSci = sci.text.toInt()
        var numMath = math.text.toInt()
        var numEng = eng.text.toInt()
        
        var UnitThai = Double(CalGrade(numThai!))
        var UnitSci = Double(CalGrade(numSci!))
        var UnitMath = Double(CalGrade(numMath!))
        var UnitEng = Double(CalGrade(numEng!))
        
        let UThai:Double = 4.0
        let USci:Double = 3.0
        let UMath:Double = 2.0
        let UEng:Double = 4.0
        let sumU = UThai+USci+UMath+UEng
        
        var Average:Double = (((UnitThai*UThai)+(UnitSci*USci)+(UnitMath*UMath)+(UnitEng*UEng))/sumU)
        var re = String(format: "%0.2f",Average)
        sortedKey.append(re)
        
        println("Average : \(re)")
        //println("array : \(sortedKey)")
        
        
        
        show.reloadData()
        
    }
    
    func CalGrade(score:Int) -> Double{
        var result:Double = 0
        if(score>=80){
            result = 4.0
        }
        else if(score>=70){
            result = 3.0
        }
        else if(score>=60){
            result = 2.0
        }
        else if(score>=50){
            result = 1.0
        }
        else{
            result = 0
        }
        
        return result
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        show.reloadData()
        
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        self.show.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedKey.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
    
        
        println("array : \(sortedKey)")
        
        cell.textLabel!.text = "your grade :"
        //cell.textLabel!.text = "grade : \(self.sortedKey[indexPath.row])"
        cell.detailTextLabel!.text = "\(self.sortedKey[indexPath.row])"
        
        return cell
    }
    
    
    
    
    }
    




