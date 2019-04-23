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
    @IBOutlet weak var primeLabel: UILabel!
    
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
    
    
    //Prime stuff
    var primeCount = 0
    
    @IBAction func primeButton(_ sender: Any) {
        for i in 0..<1000000 {
            if i.isPrime == true {
                isCircle(digits: i., primeNum: Int)
            }
        }
    }
    
    func isCircle(digits: Int, primeNum: Int) {
        
    }
    
    
    
}

extension Int {
    var isPrime: Bool {
        guard self >= 2     else { return false }
        guard self != 2     else { return true  }
        guard self % 2 != 0 else { return false }
        return !stride(from: 3, through: Int(sqrt(Double(self))), by: 2).contains { self % $0 == 0 }
    }
}

public extension Int {
    /// returns number of digits in Int number
    public var digitCount: Int {
        get {
            return numberOfDigits(in: self)
        }
    }
    /// returns number of useful digits in Int number
    public var usefulDigitCount: Int {
        get {
            var count = 0
            for digitOrder in 0..<self.digitCount {
                /// get each order digit from self
                let digit = self % (Int(truncating: pow(10, digitOrder + 1) as NSDecimalNumber))
                    / Int(truncating: pow(10, digitOrder) as NSDecimalNumber)
                if isUseful(digit) { count += 1 }
            }
            return count
        }
    }
    // private recursive method for counting digits
    private func numberOfDigits(in number: Int) -> Int {
        if number < 10 && number > 0 || number > -10 && number < 0 {
            return 1
        } else {
            return 1 + numberOfDigits(in: number/10)
        }
    }
    // returns true if digit is useful in respect to self
    private func isUseful(_ digit: Int) -> Bool {
        return (digit != 0) && (self % digit == 0)
    }
}

