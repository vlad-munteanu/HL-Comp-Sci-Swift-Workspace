//
//  ViewController.swift
//  BlackJack
//
//  Created by Vlad Munteanu on 5/17/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    
   // var keepPlaying = true
    @IBOutlet weak var totalLabel: UILabel!
    var myCount = 0
    var dealersCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
    }
    
    
    func startGame() {
        print("Ok lets start")
    }
    
    
    @IBAction func hitmeButton(_ sender: Any) {
        print("hit me")
        drawCard()
        dealerDraws()
        
    }
    
    
    @IBAction func stayButton(_ sender: Any) {
        print("stay")
        dealerDraws()
    }
    
    
    func setLabel() {
        totalLabel.text = "Total:\(myCount)"
    }
    
    func drawCard() {
        let num = Int.random(in: 1...11)
        
        if num == 1 || num == 11 {
            //alert asking user if they want 1 or 11
        }
        
        myCount += num
        
        if myCount > 21 {
            //alert lost
             print("you went over, you lost")
            reset()
        } else if myCount == 21 {
            //alert you win
            print("you win")
            
            reset()
        }
        
        
        setLabel()
    }
    
    func dealerDraws() {
        let num = Int.random(in: 1...11)
        
        dealersCount += num
        
        if dealersCount > 21 {
            //dealer went over, you won
            print("deealer went over, you won")
            reset()
        } else if dealersCount == 21 {
            //dealer won, you lost
             print("deealer won, you lost")
            reset()
        }
        
        print(dealersCount)
    }
    
    
    
   
    
    func reset() {
        myCount = 0
        dealersCount = 0
        setLabel()
    }
    
    
    
}

