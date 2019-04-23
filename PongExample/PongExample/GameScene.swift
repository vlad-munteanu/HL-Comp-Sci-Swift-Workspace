//
//  GameScene.swift
//  PongExample
//
//  Created by Vlad Munteanu on 4/20/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
  
    let ball = SKShapeNode(circleOfRadius: 30.0)
    var isBallGoingRight = true
    var isBallGoingUp = true
    
    var xSpeed: CGFloat = CGFloat.random(in: 5.0..<20.0)
    var ySpeed: CGFloat = CGFloat.random(in: 5.0..<20.0)
    
    override func sceneDidLoad() {
        backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        ball.fillColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
        addChild(ball)
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // this code is for making ball go right/left
        
        if(ball.position.x >= 273) {
            isBallGoingRight = false
            xSpeed = CGFloat.random(in: 5.0..<20.0)
            ball.fillColor = .random()
            backgroundColor = .random()
        }
        
        if isBallGoingRight == true {
            ball.position.x += xSpeed
        } else {
            if(ball.position.x <= -273) {
                isBallGoingRight = true
                xSpeed = CGFloat.random(in: 5.0..<20.0)
                ball.fillColor = .random()
                backgroundColor = .random()
            }
             ball.position.x -= xSpeed
        }
        

        //print(ball.position.x)
        
        
        // this code is for making ball go up/down
        if(ball.position.y >= 600) {
            isBallGoingUp = false
            ySpeed = CGFloat.random(in: 5.0..<20.0)
            ball.fillColor = .random()
            backgroundColor = .random()
        }
        
        if isBallGoingUp == true {
            ball.position.y += ySpeed
        } else {
            if(ball.position.y <= -600) {
                isBallGoingUp = true
                ySpeed = CGFloat.random(in: 5.0..<20.0)
                 ball.fillColor = .random()
                backgroundColor = .random()
            }
            ball.position.y -= ySpeed
        }
        
        print(ball.position.y)
        
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        
        return UIColor(red: .random(),
                       green: .random(),
                       blue: .random(),
                       alpha: 1.0)
    }
    
}

