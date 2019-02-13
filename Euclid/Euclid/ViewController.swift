//
//  ViewController.swift
//  Euclid
//
//  Created by Vlad Munteanu on 2/12/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLet: UILabel!
    
    @IBOutlet weak var numberOneField: UITextField!
    @IBOutlet weak var numberTwoField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func findGCDbutton(_ sender: Any) {
        if(numberOneField != nil) && (numberTwoField != nil) {
    
            let numOne = Int(numberOneField.text)!
            let numTwo = Int(numberTwoField.text)!
            
            if(numOne > numTwo) {
               outputLet.text = String(gcd(numOne, numTwo))
            } else {
                outputLet.text = String(gcd(numTwo, numOne))
            }
            
        }
    }
    
    func gcd(num: Int, num2: Int) -> Int {
        var temp1 = num
        var temp2 = num2
        for i in 0...num {
            let div = temp1/temp2
            let remind = temp1%temp2
            
            if remind == 0 {
                return temp2
            } else {
                //let tempyResult = 
            }
            
        }
    }
}

