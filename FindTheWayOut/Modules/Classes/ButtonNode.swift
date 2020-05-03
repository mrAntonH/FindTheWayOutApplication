//
//  ButtonNode.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 03/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit

class ButtonNode: SKSpriteNode {
    let label: SKLabelNode = {
        let label = SKLabelNode()
        label.color = .white
        label.horizontalAlignmentMode = .center
        label.verticalAlignmentMode = .center
        label.fontName = StandartFonts.AmericanTypewriterBold.description
        label.fontSize = 20
        label.zPosition = 1
        return label
    }()

    init(title: String, backgroundName: String = "") {
        let texture = SKTexture(imageNamed: backgroundName)
        super.init(texture: texture, color: .clear, size: texture.size())
        label.text = title.uppercased()
        addChild(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
