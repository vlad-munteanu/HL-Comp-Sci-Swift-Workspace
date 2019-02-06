//
//  Grass.swift
//  DrunkCube
//
//  Created by Vlad Munteanu on 2/6/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import SpriteKit

class Grass: SKSpriteNode {
    init() {
        super.init(texture: SKTexture(imageNamed: "temp"), color: UIColor.clear, size: CGSize(width: 20,height: 20))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
