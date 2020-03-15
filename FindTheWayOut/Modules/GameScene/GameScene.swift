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
        setupStartConfiguration()
        setGesture()
        run(SKAction.wait(forDuration: 4)) { [weak self] in
            self?.load(level: .level1)
        }
        
        
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
        levelCreator.configure(level: level,
                               with: map)
        updateMap()
    }
    
    private func updateMap() {
        let tilesMap = map.getTileArray()
        tilesMap.forEach { tile in
            setupTiles(perentTile: tile)
        }
    }
    
    private func setupTiles(perentTile: Tile) {
        let childTiles = perentTile.childTiles
        let perentNode = SKSpriteNode(imageNamed: perentTile.imageName)
        perentNode.anchorPoint = CGPoint(x: 0, y: 0)
        perentNode.position = perentTile.position
        //perentNode.scale(to: CGSize(width: gameConfiguration.spriteLenght,
          //                    height: gameConfiguration.spriteLenght))
        //node.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: gameConfiguration.spriteLenght,
                                                             //height: gameConfiguration.spriteLenght))

        //node.physicsBody?.categoryBitMask = CollisionTypes.wall.rawValue
        //node.physicsBody?.isDynamic = false
        
        
        childTiles.forEach { tile in
            
            let node = SKSpriteNode(imageNamed: tile.type.getImageName())
            node.anchorPoint = CGPoint(x: 0, y: 0)
            node.position = CGPoint(x: 0, y: 0)
            //node.scale(to: CGSize(width: 50,
             //                     height: 50))
            //node.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: gameConfiguration.spriteLenght,
                                                                 //height: gameConfiguration.spriteLenght))

//            node.physicsBody?.categoryBitMask = 1
//            node.physicsBody?.isDynamic = false
            
            perentNode.addChild(node)
            
            if !tile.childTiles.isEmpty {
                setupTiles(perentTile: tile)
            }
        }
        addChild(perentNode)
    }
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
          return
        }
        
        let location = touch.location(in: self)
        
        let tiles = self.atPoint(location)
        
        let previousCameraLocation = touch.previousLocation(in: self)
        if let camera = camera {
            camera.position.x -= location.x - previousCameraLocation.x
            camera.position.y -= location.y - previousCameraLocation.y
            gameConfiguration.cameraHelper.setPreviousLocation(point: camera.position)
        }
       
    }
    
}
