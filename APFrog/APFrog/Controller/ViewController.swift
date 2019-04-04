//
//  ViewController.swift
//  APFrog
//
//  Created by Vlad Munteanu on 4/4/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var frogGame = FrogGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runTrial()
    }
    
    
    func runTrial() {
        print("enter number of trials to run")
        
        print(runSimulation(amount: 1000))
        
        
        
       
    }

    
    func runSimulation(amount: Int) -> Double {
        
        var wins = 0.0
        var loses = 0.0
        
        var gameRunning = true
        
        for _ in 0...amount {
           
            gameRunning = true
            while gameRunning == true {
                if frogGame.numberOfHops < frogGame.maxHop {
                    frogGame.currentHopLength = Int.random(in: -10...20)
                    frogGame.distance = frogGame.distance - frogGame.currentHopLength
                    frogGame.numberOfHops += 1
                    print("current dist: \(frogGame.distance)")
                } else if frogGame.numberOfHops == frogGame.maxHop {
                    frogGame.currentHopLength = Int.random(in: -10...20)
                    frogGame.distance = frogGame.distance - frogGame.currentHopLength
                    frogGame.numberOfHops += 1
                    print("current dist: \(frogGame.distance)")
                } else {
                     print("current dist: \(frogGame.distance)")
                    if frogGame.distance <= 0 {
                        wins += 1
                        print("another win")
                    } else {
                        loses += 1
                        print("another lose")
                    }
                    frogGame.reset()
                    gameRunning = false
                    print("")
                    print("")
                    print("")
                }
            }
            print("")
            
            
        }
        
        print("wins \(wins)")
        print("loses \(loses)")
        
        let percentWin = Double(wins/(loses+wins))
        
        return percentWin
    }
    
    
    


}

