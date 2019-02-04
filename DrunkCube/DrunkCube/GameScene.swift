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
    var isAtTheEnd = false
    var positionOfSquare = (9, 0)
    var turn = 1
    
    let grid = Grid(blockSize: 50, rows:20, cols:11)!
    var squarey = SKShapeNode()
    
    override func didMove(to view: SKView) {
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        createGrid()
    }
    
    
    func createGrid() {
        
        
        grid.position = CGPoint (x:frame.midX, y:frame.midY)
        addChild(grid)
        
        squarey = SKShapeNode(rectOf: CGSize(width: grid.blockSize, height: grid.blockSize))
        
        
        
        squarey.fillColor = #colorLiteral(red: 0.07459209753, green: 1, blue: 0.07377539981, alpha: 1)
        
        //gamePiece.setScale(0.0625)
        squarey.position = grid.gridPosition(row: 9, col: 0)
        grid.addChild(squarey)
 
    }
    
  
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        while(isAtTheEnd == false) {
            
            let tempSquarey = SKShapeNode(rectOf: CGSize(width: grid.blockSize, height: grid.blockSize))
            tempSquarey.fillColor = #colorLiteral(red: 0.07459209753, green: 1, blue: 0.07377539981, alpha: 1)
            
            if(turn%2 == 0) {
                let temp = Int.random(in: 0...4)
                if(temp == 1) {
                    if(positionOfSquare.0 != 20) {
                        tempSquarey.position = grid.gridPosition(row: positionOfSquare.0+1, col: 0)
                        positionOfSquare.0 = positionOfSquare.0 + 1
                    }
                } else if (temp == 2) {
                    if(positionOfSquare.0 != 0) {
                        tempSquarey.position = grid.gridPosition(row: positionOfSquare.0-1, col: 0)
                        positionOfSquare.0 = positionOfSquare.0 - 1
                    }
                } else if (temp == 3) {
                    if(positionOfSquare.1 != 11) {
                        tempSquarey.position = grid.gridPosition(row: positionOfSquare.0, col: positionOfSquare.1+1)
                        
                        positionOfSquare.1 = positionOfSquare.1 + 1
                    }
                } else if (temp == 4) {
                    if(positionOfSquare.1 != 0) {
                        tempSquarey.position = grid.gridPosition(row: positionOfSquare.0, col: positionOfSquare.1-1)
                        positionOfSquare.1 = positionOfSquare.1 - 1
                    }
                }
                
            } else {
                tempSquarey.position = grid.gridPosition(row: positionOfSquare.0, col: positionOfSquare.1+1)
                positionOfSquare.1 = positionOfSquare.1 + 1
            }
            
            
            //gamePiece.setScale(0.0625)
          
            grid.addChild(tempSquarey)
            turn = turn + 1
        }
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        let tempSquarey = SKShapeNode(rectOf: CGSize(width: grid.blockSize, height: grid.blockSize))
        tempSquarey.fillColor = #colorLiteral(red: 0.07459209753, green: 1, blue: 0.07377539981, alpha: 1)
        
        if(turn%2 == 0) {
            let temp = Int.random(in: 0...4)
            if(temp == 1) {
                if(positionOfSquare.0 != 20) {
                    tempSquarey.position = grid.gridPosition(row: positionOfSquare.0+1, col: 0)
                    positionOfSquare.0 = positionOfSquare.0 + 1
                }
            } else if (temp == 2) {
                if(positionOfSquare.0 != 0) {
                    tempSquarey.position = grid.gridPosition(row: positionOfSquare.0-1, col: 0)
                    positionOfSquare.0 = positionOfSquare.0 - 1
                }
            } else if (temp == 3) {
                if(positionOfSquare.1 != 11) {
                    tempSquarey.position = grid.gridPosition(row: positionOfSquare.0, col: positionOfSquare.1+1)
                    
                    positionOfSquare.1 = positionOfSquare.1 + 1
                }
            } else if (temp == 4) {
                if(positionOfSquare.1 != 0) {
                    tempSquarey.position = grid.gridPosition(row: positionOfSquare.0, col: positionOfSquare.1-1)
                    positionOfSquare.1 = positionOfSquare.1 - 1
                }
            }
            
        } else {
            tempSquarey.position = grid.gridPosition(row: positionOfSquare.0, col: positionOfSquare.1+1)
            positionOfSquare.1 = positionOfSquare.1 + 1
        }
        
        
        //gamePiece.setScale(0.0625)
        
        grid.addChild(tempSquarey)
        turn = turn + 1
    }
}
