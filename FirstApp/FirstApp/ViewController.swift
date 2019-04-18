//
//  ViewController.swift
//  FirstApp
//
//  Created by Vlad Munteanu on 4/18/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOfClicks = 0
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello world")
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print("button pressed")
        
    }
    
}

