//
//  AppRouter.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 07/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit
import SpriteKit

final class AppRouter {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func startApplication() {
        
        guard let scene = MySKScene(fileNamed: "GameScene") else { return }
        
        let vc = GameViewController()
        let viewModel = GameViewModel()
        let cameraHelper = CameraHelper()
        let gameConfiguration = GameConfiguration(cameraHelper: cameraHelper)
        let levelCreator = LevelCreator(spriteLenght: gameConfiguration.spriteLenght)
        let map = Map(with: [])
        
        scene.gameConfiguration = gameConfiguration
        scene.levelCreator = levelCreator
        scene.map = map
        vc.scene = scene
        
        vc.viewModel = viewModel
        self.setRoot(viewController: vc)
        
        
    }
    
    private func setRoot(viewController: UIViewController) {
        window.rootViewController?.dismiss(animated: false)
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
