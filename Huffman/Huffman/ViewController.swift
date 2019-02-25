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
    var repetitionCounter = [Int: Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func goButton(_ sender: Any) {
        if textfield.text != nil {
            var tempArray = textfield.text?.ascii
            for i in tempArray! {
                var tempCounter = 0
                for x in 0..<tempArray.size {
                    if i == x {
                        tempCounter += 1
                        tempArray?.remove(at: x)
                    }
                }
                repetitionCounter[i] = tempCounter
            }
        }
        
        for (asciiCode, numOfTimes) in repetitionCounter {
            print("Ascii Code:\(asciiCode), Num of Reps \(numOfTimes)")
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
