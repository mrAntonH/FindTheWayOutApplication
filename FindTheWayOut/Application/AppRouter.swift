//
//  AppRouter.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 07/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit

final class AppRouter {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func startApplication() {
        let vc = GameViewController()
        let viewModel = GameViewModel()
        vc.viewModel = viewModel
        setRoot(viewController: vc)
    }
    
    private func setRoot(viewController: UIViewController) {
        window.rootViewController?.dismiss(animated: false)
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
