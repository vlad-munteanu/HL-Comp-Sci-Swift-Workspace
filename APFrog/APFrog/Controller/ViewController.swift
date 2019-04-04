//
//  ViewController.swift
//  APFrog
//
//  Created by Vlad Munteanu on 4/4/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var frog1 = FrogGame()
    var frog2 = FrogGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runTrial()
    }
    
    
    func runTrial() {
        print("enter number of trials to run")
        
        print(runSimulation(amount: 1000))
        
        
        
       
    }

    
    func runSimulation(amount: Int) {
        
        var frog1Win = 0.0
        var frog2Win = 0.0
        
        var gameRunning = true
        
        for i in 0...amount {
           
            gameRunning = true
            while gameRunning == true {
                if frog1.numberOfHops < frog1.maxHop {
                    frog1.currentHopLength = Int.random(in: -10...20)
                    frog1.distance = frog1.distance - frog1.currentHopLength
                    frog1.numberOfHops += 1
                    
                    frog2.currentHopLength = Int.random(in: -10...20)
                    frog2.distance = frog2.distance - frog2.currentHopLength
                    frog2.numberOfHops += 1
                    
                    print("current dist: \(frog1.distance)")
                } else if frog1.numberOfHops == frog1.maxHop {
                    frog1.currentHopLength = Int.random(in: -10...20)
                    frog1.distance = frog1.distance - frog1.currentHopLength
                    frog1.numberOfHops += 1
                    print("current dist: \(frog1.distance)")
                    
                    frog2.currentHopLength = Int.random(in: -10...20)
                    frog2.distance = frog2.distance - frog2.currentHopLength
                    frog2.numberOfHops += 1
                } else {
                     print("current dist: \(frog1.distance)")
                    if frog1.distance < frog2.distance {
                        frog1Win += 1
                        print("frog 1 win")
                    } else {
                        frog2Win += 1
                        print("frog 2 win")
                    }
                    frog1.reset()
                    frog2.reset()
                    gameRunning = false
                    print("")
                    print("")
                    print("")
                }
            }
            print("Race \(i)")
            
            
        }
        
        print("wins for frog 1 \(frog1Win)")
        print("wins for frog 2 \(frog2Win)")
        
       // let percentWin = Double(wins/(loses+wins))
        
        //return percentWin
    }
    
    
    


}

