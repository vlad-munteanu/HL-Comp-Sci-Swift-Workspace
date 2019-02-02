//
//  SKH.swift
//  RecursiveH
//
//  Created by Vlad Munteanu on 1/29/19.
//  Copyright © 2019 Vlad Munteanu. All rights reserved.
//

import Foundation
import SpriteKit

var Hheight: CGFloat = 180
var HmiddleLength: CGFloat = 90

class SKH: SKShapeNode {
    
    
    init(leftBottom: CGPoint, scaler: CGFloat) {
        super.init()
       
        self.zPosition = 1
 
        let mainPath = UIBezierPath()
    
        //left side
        mainPath.move(to: leftBottom)
        mainPath.addLine(to: CGPoint(x: leftBottom.x, y: leftBottom.y + (Hheight*scaler)))
        
        //middle
        mainPath.move(to: CGPoint(x: leftBottom.x, y: (leftBottom.y + (Hheight*scaler))/2))
        mainPath.addLine(to: CGPoint(x: leftBottom.x + (HmiddleLength*scaler), y: (leftBottom.y + (Hheight*scaler))/2))
        
        //right side
        mainPath.move(to: CGPoint(x: leftBottom.x + (HmiddleLength*scaler), y:  leftBottom.y))
        mainPath.addLine(to: CGPoint(x: leftBottom.x + (HmiddleLength*scaler), y: leftBottom.y + (Hheight*scaler)))
        
        self.path = mainPath.cgPath
       
        self.strokeColor = UIColor.white
        self.lineWidth = 2

    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
