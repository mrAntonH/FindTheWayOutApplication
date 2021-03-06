//
//  SceneManager.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 03/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit
import RxSwift
import RxCocoa

final class SceneManager {
    
    static let shared = SceneManager()
    
    private var gameScene: GameScene?
    private var menuScene: MenuScene?
    
    private var gameState: GameState?
    
    private init() {}
    
    func configureGame(step: BehaviorRelay<GameStep>,
                       event: BehaviorRelay<GameEvent>) {
        let gameState = GameState(step: step, event: event)
        self.gameState = gameState
        let newGame = GameScene()
        newGame.gameState = gameState
        gameScene = newGame
    }
    
    func startNewGame() {
        gameState?.step.accept(.expect)
        gameState?.event.accept(.expect)
        if let step = gameState?.step,
            let event = gameState?.event {
            let gameState = GameState(step: step,
                                      event: event)
            self.gameState = gameState
            let newGame = GameScene()
            newGame.gameState = gameState
            gameScene = newGame
        } else {
            fatalError("scene doesn't configured")
        }
    }
    
    func setMenuScene(size: CGSize) {
        menuScene = MenuScene(size: size)
    }
    
    func getGameScene() -> GameScene? {
        return gameScene
    }
    
    func getMenuScene() -> MenuScene? {
        return menuScene
    }
    
}
