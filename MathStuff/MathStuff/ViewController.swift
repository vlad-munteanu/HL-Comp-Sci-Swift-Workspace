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
//        for i in 0..<1000 {
//            if i.isPrime == true {
//                isCircle(digits: i.digitCount, primeNum: i)
//            }
//        }
        
        var i = 1234
        isCircle(digits: i.digitCount, primeNum: i)
    }
    
    func isCircle(digits: Int, primeNum: Int) {
        var tempArray = primeNum.digits
    
        if digits == 1 {
            primeCount += 1
            print(primeNum)
        } else if digits == 2 {
            //var tempNumber = (tempArray[1] + tempArray[0])
            if (Int(tempArray[1] + tempArray[0]))!.isPrime == true {
                primeCount += 1
                print(primeNum)
            }
        } else if digits == 3 {
            if ((Int(tempArray[1] + tempArray[2] + tempArray[0]))!.isPrime == true) && ((Int(tempArray[2] + tempArray[0] + tempArray[1]))!.isPrime == true) {
                primeCount += 1
                print(primeNum)
            }
        } else if digits >= 4 {
            if checkCircle(numberArry: tempArray) == true {
                primeCount += 1
            }
        }
    }
    
    func checkCircle(numberArry: [String]) -> Bool {
        
        /*
         0123
         1230
         2301
         3012
 */
        
        var tempArray = numberArry
        print(tempArray)
        var tempDigit = ""
        var tempString = ""
        
        for i in 0...numberArry.count-1 {
            
            tempDigit = tempArray[0]
            
            for x in 0..<numberArry.count {
                if x == numberArry.count-1 {
                   tempArray[x] = tempDigit
                } else {
                    tempArray[x] = tempArray[x+1]
                }
            }
            
           print(tempArray)
            
//            if (Int(numberArry[tempDigit+1] + numberArry[tempDigit+2] + numberArry[tempDigit]))!.isPrime == true {
//
//            }
        }
        return false
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

extension BinaryInteger {
    var digits: [String] {
        return String(describing: self).compactMap { String($0) }
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

