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
    var scene: MySKScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureGameScene()
    }
    
    private func configureGameScene() {
        view = SKView(frame: view.bounds)
        
        guard let view = view as! SKView? else { return }
        scene.size = view.frame.size
        //scene.scaleMode = .aspectFill
        view.presentScene(scene)
        
        view.ignoresSiblingOrder = true
        view.showsNodeCount = true
        view.showsFPS = true
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
