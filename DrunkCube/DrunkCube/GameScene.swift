//
//  GameScene.swift
//  DrunkCube
//
//  Created by Vlad Munteanu on 2/4/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        createGrid()
    }
    
    
    func createGrid() {
        if let grid = Grid(blockSize: 50, rows:20, cols:11) {
            grid.position = CGPoint (x:frame.midX, y:frame.midY)
            addChild(grid)
            
            let gamePiece = SKSpriteNode(imageNamed: "Spaceship")
            gamePiece.setScale(0.0625)
            gamePiece.position = grid.gridPosition(row: 9, col: 0)
            grid.addChild(gamePiece)
        }
    }
    
  
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     
    }
    
 
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
