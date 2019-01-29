//
//  ViewController.swift
//  Fibonacci
//
//  Created by Vlad Munteanu on 1/29/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    
    @IBOutlet weak var textOutlet: UITextField!
    
    
    @IBOutlet weak var sumOutlet: UILabel!
    
    @IBAction func goButton(_ sender: Any) {
        let temp = Int(String(textOutlet.text!))!
        if temp > 0 {
            sumOutlet.text = sumFIB()
        }
    }
    
    func sumFIB() -> String {
        let temp = Int(String(textOutlet.text!))! + 1
        print(temp)
       let sum = (fibseq(numAt: temp)) - 1
        
        return String(sum)
    }
    
    func fibseq(numAt: Int) -> Int {
        
        if(numAt <= 1) {
            return numAt
        } else {
  
            return fibseq(numAt: numAt-1) + fibseq(numAt: numAt-2)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

