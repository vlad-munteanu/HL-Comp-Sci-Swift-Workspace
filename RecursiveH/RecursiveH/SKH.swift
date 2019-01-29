//
//  SKH.swift
//  RecursiveH
//
//  Created by Vlad Munteanu on 1/29/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import Foundation
import SpriteKit

class SKH: SKLabelNode {
    
    init() {
        super.init(text: "H")
        fontColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        fontSize = 80.0
        self.zPosition = 1

    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
