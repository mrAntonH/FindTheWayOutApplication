//
//  HUD.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 03/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit

final class HUD: SKScene {
    
    var wayShapes: [SKSpriteNode] = []
    var screenSize = CGSize(width: 0, height: 0)
    
    func configureUI(screenSize: CGSize) {
        self.screenSize = screenSize
    }
    
    func configureWay(for nodes: [Int]) {
        var isFirst = true
        var setPosition = CGPoint(x: 20, y: screenSize.height - 50)
        let shapes = nodes.map { number -> SKSpriteNode in
            if isFirst {
                let texture = SKTexture(imageNamed: "startWayShape")
                let shape = SKSpriteNode(texture: texture)
                shape.position = setPosition
                setPosition = CGPoint(x: setPosition.x + texture.size().width,
                                        y: setPosition.y)
                addChild(shape)
                isFirst = false
                return shape
            } else {
                let texture = SKTexture(imageNamed: "wayShape")
                let shape = SKSpriteNode(texture: texture)
                shape.position = setPosition
                setPosition = CGPoint(x: setPosition.x + texture.size().width,
                                        y: setPosition.y)
                addChild(shape)
                return shape
            }
        }
        wayShapes = shapes
    }
     
}
