//
//  AppRouter.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 07/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit
import RxSwift
import RxCocoa

final class AppRouter {
    
    private let window: UIWindow
    private let sceneManager: SceneManager
    
    init(window: UIWindow,
         sceneManager: SceneManager = SceneManager.shared) {
        self.window = window
        self.sceneManager = sceneManager
    }
    
    func startApplication() {
        let vc = GameViewController()
        let viewModel = GameViewModel()
        let step = BehaviorRelay<GameStep>(value: .expect)
        let event = BehaviorRelay<GameEvent>(value: .expect)
        sceneManager.configureGame(step: step, event: event)
        
        vc.viewModel = viewModel
        self.setRoot(viewController: vc)
        
        
    }
    
    private func setRoot(viewController: UIViewController) {
        window.rootViewController?.dismiss(animated: false)
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
