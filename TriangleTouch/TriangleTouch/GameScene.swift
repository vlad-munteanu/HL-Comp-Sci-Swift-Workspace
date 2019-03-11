//
//  GameScene.swift
//  TriangleTouch
//
//  Created by Vlad Munteanu on 3/11/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var touchePos = [CGPoint]()
    
    override func didMove(to view: SKView) {

        
        self.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if(touchePos.count <= 1 ) {
            if(touchePos.count == 0) { self.removeAllChildren() }
            touchePos.append(pos)
            let point = SKShapeNode(circleOfRadius: 5.0)
            point.fillColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            point.position = pos
            self.addChild(point)
        } else if(touchePos.count >= 2) {
            touchePos.append(pos)
             self.removeAllChildren()
            
            makeTriangle()
        }
    }
    
    func makeTriangle() {
        let Triangle = SKShapeNode(points: &touchePos, count: touchePos.count)
        
        Triangle.fillColor = .random()
         self.addChild(Triangle)
        touchePos.removeAll()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchesMoved(toPoint: t.location(in: self)) }
//    }
//
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
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
