//
//  FrogGame.swift
//  APFrog
//
//  Created by Vlad Munteanu on 4/4/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import Foundation

class FrogGame {
    var maxHop: Int = 8
    var distance: Int = 50
    var currentHopLength = 20
    var numberOfHops = 0
    
    
    func reset() {
        maxHop = 8
        distance = 50
        currentHopLength = 20
        numberOfHops = 0
    }
    
    
    
    init() {
        
    }
    
}
