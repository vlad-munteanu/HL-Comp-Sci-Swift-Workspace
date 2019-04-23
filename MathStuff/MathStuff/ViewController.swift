//
//  ViewController.swift
//  MathStuff
//
//  Created by Vlad Munteanu on 4/23/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    var currentNumber = (number: 0,count: 1)
    var tempCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {
        for i in 0..<1000000 {
           // print(i)
            checkNum(num: i)
            if(tempCount > currentNumber.count) {
                currentNumber.number = i
                currentNumber.count = tempCount
            }
            tempCount = 0
        }
        tempCount = currentNumber.count
        print(tempCount)
        print(currentNumber.number)
        numberLabel.text = "Number:\(currentNumber.number)"
//        print(currentNumber.count)
    }
    
    func checkNum(num: Int) -> Int{
        
        if num > 1 {
            //even
            if num % 2 == 0 {
                tempCount += 1
                //print(tempCount)
                return checkNum(num: num/2)
            }
                //odd
            else {
                
                tempCount += 1
                return checkNum(num: (3*num) + 1)
                
            }
        } else  {
            return 0
        }
        
    }
    

}

