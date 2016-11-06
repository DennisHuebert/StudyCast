//
//  ClassSelectController+handlers.swift
//  StudyCastv2
//
//  Created by Dennis on 2016-11-04.
//  Copyright © 2016 Apollo. All rights reserved.
//

import UIKit
import Firebase


extension ClassSelectController {
    
    func handleDone() {
    
    }
    
    func handleCancel(){
    
    }
    
    func handleTap(recognizer: UITapGestureRecognizer){

        if recognizer.state == UIGestureRecognizerState.ended {
            let tapLocation = recognizer.location(in: self.facultyTableView)
            if let tapIndexPath = self.facultyTableView.indexPathForRow(at: tapLocation) {
                if let tappedCell = self.facultyTableView.cellForRow(at: tapIndexPath) as? UserCell {
                    
                    var i = numCells - 1
                    var added = false
                    while i >= 0 {
                        if ((tappedCell.textLabel?.text)! == pickedClassesDataSet[i]) {
                            added = true
                            break
                        }
                        i -= 1
                    }
                    
                    if !added {
                        print("****************************")
                    
                        numCells += 1
                        print(numCells)
                        print((tappedCell.textLabel?.text)!)
                        pickedClassesDataSet.append((tappedCell.textLabel?.text)!)
                    
                        print(pickedClassesDataSet)
                        userClassesTableView.reloadData()
                        
                    }
                }
            }
        }
        
    }
    
}
