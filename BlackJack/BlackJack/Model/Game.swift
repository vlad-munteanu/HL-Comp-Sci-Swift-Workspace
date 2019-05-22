//
//  Game.swift
//  BlackJack
//
//  Created by Vlad Munteanu on 5/19/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import Foundation

class Game {
    
    
    var dealersHand = 0
    var userHand = 0
    var name: String
    
    var gamePlaying = true
    
    //var winner: String
    
    func checkTwentyOne() {
        
    }
    
    func playGame() {
        while gamePlaying {
            print("hit or push?")
            let ans = readLine()
            if ans == "hit" {
                userHand += drawCard()
            }
            dealersTurn()
            anyoneGot21()
        }
    }
    
    func dealersTurn() {
        var rand = Int.random(in: 0...1)
        if rand == 1 {
            dealersHand += drawCard()
        }
    }
    
    func anyoneGot21() {
        if dealersHand >= 21 || userHand >= 21 {
            whoWon()
        }
    }
    
    func whoWon()  {
        if dealersHand == 21 {
            print("Dealer Won")
        } else if userHand == 21 {
            print("User Won")
        }
        gamePlaying = false
    }
    
    func drawCard() -> Int {
        var rand = Int.random(in: 1...11)
        
        if (rand == 11 || rand == 1) {
            print("Do you want this Ace to be an 11 or 1?")
            let num = Int(readLine()!)!
            rand = num
        }
        print("you drew a \(rand)")
        
        return rand
    }
    
   
    
    init(name: String) {
        self.name = name
        print(self.name)
    }
    
}
