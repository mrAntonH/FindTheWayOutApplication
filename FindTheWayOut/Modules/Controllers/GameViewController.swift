//
//  GameViewController.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 07/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

final class GameViewController: UIViewController {
    
    var viewModel: GameViewModel!
    private let sceneManager = SceneManager.shared
    //var scene: GameProcessSKScene!
    //var main = MenuScene()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //main = MenuScene(size: self.view.bounds.size)
        sceneManager.createMenuScene(size: self.view.bounds.size)
        self.configureGameScene()
        
    }
    
    private func configureGameScene() {
        view = SKView(frame: view.bounds)
        
        guard let view = view as! SKView? else { return }
        sceneManager.menuScene?.size = view.frame.size
        //scene.scaleMode = .aspectFill
        if let scene = sceneManager.menuScene {
            view.presentScene(scene)
        }
        
        view.ignoresSiblingOrder = true
        view.showsNodeCount = true
        view.showsFPS = true
        
        
        let infoView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        infoView.backgroundColor = .red
        view.addSubview(infoView)
        view.bringSubviewToFront(infoView)
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        if UIDevice.current.userInterfaceIdiom == .phone {
//            return .allButUpsideDown
//        } else {
//            return .all
//        }
        return .portrait
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
