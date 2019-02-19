//
//  ViewController.swift
//  Huffman
//
//  Created by Vlad Munteanu on 2/19/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func goButton(_ sender: Any) {
        if textfield.text != nil {
            for i in textfield.text {
                
            }
        }
    }
    
    

}

extension Character {
    var isAscii: Bool {
        return unicodeScalars.first?.isASCII == true
    }
    var ascii: UInt32? {
        return isAscii ? unicodeScalars.first?.value : nil
    }
}

extension StringProtocol {
    var ascii: [UInt32] {
        return compactMap { $0.ascii }
    }
}
