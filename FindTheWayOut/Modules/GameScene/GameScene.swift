//
//  GameScene.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 07/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: MySKScene {
    
    @objc private func pinchGestureAction(_ sender: UIPinchGestureRecognizer) {
        guard let camera = self.camera else {
            return
        }
        
        if sender.state == .began {
            gameConfiguration.cameraHelper.setPreviousScale(value: camera.xScale)
        }
        let scale = gameConfiguration.cameraHelper.getPreviousScale()
        camera.setScale(scale * 1 / sender.scale)
    }
    
    
    override func didMove(to view: SKView) {
        load(level: .level1)
        setupStartConfiguration()
        setGesture()
        
    }
    
    private func setGesture() {
        let pinchGesture = UIPinchGestureRecognizer()
        pinchGesture.addTarget(self, action: #selector(pinchGestureAction))
        view?.addGestureRecognizer(pinchGesture)
    }
    
    private func setupStartConfiguration() {
        setupCamera()
    }
    
    private func setupCamera() {
        let myCamera = SKCameraNode()
        let cameraPosition = gameConfiguration.cameraHelper.getCurrentLocation()
        myCamera.position = CGPoint(x: cameraPosition.x + (view?.frame.width ?? 0) / 2,
                                    y: cameraPosition.y + (view?.frame.height ?? 0) / 2)
        camera = myCamera
        addChild(myCamera)
    }
    
    private func load(level: Level) {
        guard let levelURL = level.description else {
            let errorString = (CustomAppError.loadLevel.errorDescription
                                ?? R.string.localizable.error())
            fatalError(errorString)
        }
        guard let levelString = try? String(contentsOf: levelURL) else {
            let errorString = (CustomAppError.loadLevel.errorDescription
                                ?? R.string.localizable.error())
            fatalError(errorString)
        }
        
        let lines = levelString.components(separatedBy: "\n")
        
        let stepSize = Int(gameConfiguration.spriteSize.width)
        
        for (row, line) in lines.reversed().enumerated() {
            for (column, letter) in line.enumerated() {
                let position = CGPoint(x: stepSize * column, y: stepSize * row)
                if letter == "x" {
                    let node = SKSpriteNode(imageNamed: R.image.blackTile.name)
                    node.anchorPoint = CGPoint(x: 0, y: 0)
                    node.position = position
                    node.scale(to: CGSize(width: stepSize, height: stepSize))
                    node.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: stepSize, height: stepSize))
                    
                    //node.physicsBody?.categoryBitMask = CollisionTypes.wall.rawValue
                    node.physicsBody?.isDynamic = false
                    addChild(node)
                } else if let numberVertex = letter.wholeNumberValue {
                    let labelNode = SKLabelNode(text: String(numberVertex))
                    let node = SKSpriteNode(imageNamed: R.image.floor1.name)
                    node.anchorPoint = CGPoint(x: 0, y: 0)
                    node.position = position
                    node.scale(to: CGSize(width: stepSize, height: stepSize))
                    labelNode.position = CGPoint(x: 25, y: 25)
                    
                    node.addChild(labelNode)
                    
                    //node.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
                    //node.physicsBody?.categoryBitMask = CollisionTypes.wall.rawValue
                    node.physicsBody?.isDynamic = false
                    addChild(node)
                } else if letter == " " {
                    // this is an empty space – do nothing!
                } else {
                    fatalError("Unknown level letter: \(letter)")
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
          return
        }

        let location = touch.location(in: self)
        let previousCameraLocation = touch.previousLocation(in: self)
        if let camera = camera {
            camera.position.x -= location.x - previousCameraLocation.x
            camera.position.y -= location.y - previousCameraLocation.y
            gameConfiguration.cameraHelper.setPreviousLocation(point: camera.position)
        }
       
    }
    
}
