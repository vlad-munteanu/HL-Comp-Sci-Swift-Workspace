//
//  GameScene.swift
//  TouchDraw
//
//  Created by Vlad Munteanu on 2/25/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var spinnyNode : SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.08
        self.spinnyNode = SKSpriteNode.init(texture: SKTexture(image: UIImage(named: "boolChris.png")!), size: CGSize(width: w, height: w))
        
        if let spinnyNode = self.spinnyNode {
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 5.0),
                                              SKAction.fadeOut(withDuration: 5.0),
                                              SKAction.removeFromParent()]))
        }
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKSpriteNode? {
            n.position = pos
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKSpriteNode? {
            n.position = pos
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKSpriteNode? {
            n.position = pos
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
