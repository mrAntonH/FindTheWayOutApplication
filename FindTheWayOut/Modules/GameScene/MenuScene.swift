//
//  MenuScene.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 02/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit

final class MenuScene: SKScene {
    
    private let sceneManager = SceneManager.shared
    
    override func didMove(to view: SKView) {
        addBlurBackground()
    }
    
    private func addBlurBackground() {

        let width = view?.frame.width ?? 0
        let height = view?.frame.height ?? 0
        
        let effectsNode = SKEffectNode()
        let filter = CIFilter(name: "CIGaussianBlur")
        let blurAmount = 5.0
        filter?.setValue(blurAmount, forKey: kCIInputRadiusKey)
        
        effectsNode.filter = filter
        effectsNode.position = self.view!.center
        effectsNode.blendMode = .alpha
        
        let background = SKSpriteNode(color: SKColor(red: 27 / 255,
                                                     green: 80 / 255,
                                                     blue: 120 / 255,
                                                     alpha: 1),
                                      size: CGSize(width: width,
                                                   height: height))
        let texture = SKTexture(imageNamed: "backgroundGraphShadow")
        let graph = SKTexture(imageNamed: "graph")
        let logo = SKTexture(imageNamed: "logo")
        
        let image = SKSpriteNode(texture: texture)
        let imageGraph = SKSpriteNode(texture: graph)
        let imageLogo = SKSpriteNode(texture: logo)
        imageLogo.position = CGPoint(x: width / 2, y: height - 100)
        imageLogo.setScale(0.7)
        image.scale(to: CGSize(width: width * 1.2, height: height * 1.2))
        imageGraph.scale(to: CGSize(width: width * 1.2, height: height * 1.2))
        if let center = view?.center {
            imageGraph.position = center
        }
        background.addChild(image)
        effectsNode.addChild(background)
        self.addChild(effectsNode)
        self.addChild(imageGraph)
        self.addChild(imageLogo)
        
        let button1 = ButtonNode(title: "go", backgroundName: "menuButton")
        button1.position = CGPoint(x: width / 2, y: height - 250)
        button1.name = "playButton"
        button1.label.name = "playButton"
        self.addChild(button1)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            let node = atPoint(location)
            if node.name == "playButton" {
                let transition = SKTransition.flipVertical(withDuration: 1)
                sceneManager.startNewGame()
                if let gameScene = sceneManager.getGameScene() {
                    gameScene.scaleMode = .aspectFill
                    scene?.view?.presentScene(gameScene, transition: transition)
                }
               
            }
        }
        
    }
    
}


