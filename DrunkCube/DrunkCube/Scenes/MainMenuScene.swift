//
//  MainMenuScene.swift
//  DrunkCube
//
//  Created by Vlad Munteanu on 2/6/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import SpriteKit

class MainMenuScene : SKScene  {

    let background = SKSpriteNode(imageNamed: "bg")
    
    override func didMove(to view: SKView) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        if let name = touchedNode.name {
        }
    }
}
