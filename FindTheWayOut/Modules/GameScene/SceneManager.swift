//
//  SceneManager.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 03/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit

final class SceneManager {
    
    static let shared = SceneManager()
    
    var gameScene: GameScene?
    var menuScene: MenuScene?
    
    private init() {}
    
    func configureNewGameScene() {
       // let newGame = GameScene()
        
    }
    
    func createMenuScene(size: CGSize) {
        menuScene = MenuScene(size: size)
    }
    
}
