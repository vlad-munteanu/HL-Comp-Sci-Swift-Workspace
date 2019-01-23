//
//  ViewController.swift
//  LostDigit
//
//  Created by Vlad Munteanu on 1/17/19.
//  Copyright © 2019 LesGarcons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...99 {
            numbys.append(i)
            
        }
    }
    
    var numbys = [Int]()
    let digit = 0
    let big numby = 530131801762787739802889792754109700139358547710066257652050346294484433323974747960297803292989236183040000000000
    let try = _139,358,547,710,066,257,652,050,346,294,484,433,323,974,747,960,297,803,292,989,236,183,040,000,000,000.
    
    
    @IBOutlet weak var digitLabel: UILabel!
    
    @IBAction func findDigit(_ sender: Any) {
        
    }
    
    func setLabel(yuh : Int) {
        digitLabel.text = "Digit:\(yuh)"
    }
}

