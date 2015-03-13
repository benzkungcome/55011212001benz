//
//  ViewController.swift
//  Exam1_55011212001
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {
    
    let cellIdentifier = "cellIdentifier"
    var sortedKey: [String] = []
    
    @IBOutlet weak var nameSub: UITextField!
    @IBOutlet weak var totalMid: UITextField!
    @IBOutlet weak var pointMid: UITextField!
    @IBOutlet weak var totalTerm: UITextField!
    @IBOutlet weak var pointTerm: UITextField!
    @IBOutlet weak var totalFinal: UITextField!
    @IBOutlet weak var pointFinal: UITextField!
    @IBOutlet weak var pointShow: UITableView!
    
    @IBOutlet weak var show: UITextView!
    @IBAction func calculatePoint(sender: UIButton) {
        
        var inSub = nameSub.text
        var intotalM = totalMid.text.toInt()
        var inMid = pointMid.text.toInt()
        var intotalT = totalTerm.text.toInt()
        var inTerm = pointTerm.text.toInt()
        var intotalF = totalFinal.text.toInt()
        var inFinal = pointFinal.text.toInt()
        
        
        var scoreMid = Double((totalMid.text as NSString).doubleValue)
        var scoreTerm = Double((totalTerm.text as NSString).doubleValue)
        var scoreFinal = Double((totalFinal.text as NSString).doubleValue)
        
        
        
        var sum = ((scoreMid) + (scoreTerm) + (scoreFinal))
        var aver:Double = Double(sum)
        var grade:String = calGrade(sum)
        
        
        println("Average : \(aver)")
        println("Your grade : \(grade)")
        show.text = "Average : \(aver)\n Grade : \(grade)"
        
    }
    
    func calGrade(score:Double) -> String{
        var result: String = ""
        if(score>=80.00){
            result = "A"
        }
        else if(score>=74.00){
            result = "B+"
        }
        else if(score>=68.00){
            result = "B"
        }
        else if(score>=62.00){
            result = "C+"
        }
        else if(score>=56.00){
            result = "C"
        }
        else if(score>=50.00){
            result = "D+"
        }
        else if(score>=44.00){
            result = "D"
        }
        else{
            result = "F"
        }
        return result
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        pointShow.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        self.pointShow.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection  section: Int) -> Int {
        return sortedKey.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        println("array : \(sortedKey)")
        cell.textLabel!.text = "Your Grade : "
        cell.detailTextLabel!.text = "\(self.sortedKey[indexPath.row])"
        return cell
    }


}

