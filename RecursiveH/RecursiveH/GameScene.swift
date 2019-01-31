//
//  GameScene.swift
//  RecursiveH
//
//  Created by Vlad Munteanu on 1/29/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import SpriteKit
import GameplayKit

var depth = 1
var mainGen: SKHGenerator!
class GameScene: SKScene {
    
    
    
    override func didMove(to view: SKView) {
        backgroundColor = #colorLiteral(red: 0, green: 0.4793452024, blue: 0.9990863204, alpha: 1)
        mainGen = SKHGenerator(size: view.frame.size)
        addChild(mainGen)
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
        
    }
    
    func makeNew() {
        
    }
}
