//
//  SKHGenerator.swift
//  RecursiveH
//
//  Created by Vlad Munteanu on 1/29/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import Foundation
import SpriteKit

class SKHGenerator: SKSpriteNode {
    
    var SKHArray = [SKH]()
    
    
    init(size: CGSize) {
        super.init(texture: nil, color: UIColor.clear, size: CGSize(width: size.width, height: size.height))
        anchorPoint = CGPoint(x:-size.width, y:0)
        
        //add intial H
        let newH = SKH(leftBottom:  CGPoint(x: 0-(HmiddleLength/2) ,y:0), scaler: 1.0)
        SKHArray.append(newH)
        addChild(newH)
        
    }
    
    func createNewH() {
        //create more H's here
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
