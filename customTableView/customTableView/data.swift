//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<balloon> {
        var temArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "green.png"), bName: "green")
        temArray.append(b1)
        let b2 = balloon(bImage: UIImage(named: "orange.png"), bName: "orange")
        temArray.append(b2)
        let b3 = balloon(bImage: UIImage(named: "pink.png"), bName: "pink")
        temArray.append(b3)
        let b4 = balloon(bImage: UIImage(named: "yellow.png"), bName: "yellow")
        temArray.append(b4)
        let b5 = balloon(bImage: UIImage(named: "blue.png"), bName: "blue")
        temArray.append(b5)
        
        return temArray
    }
}
