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

class GameViewController: UIViewController {
    
    var viewModel: GameViewModel!
    
//    // Configure the view.
//    let skView = self.view as! SKView
//    skView.showsFPS = true
//    skView.showsNodeCount = true
//
//    /* Sprite Kit applies additional optimizations to improve rendering performance */
//    skView.ignoresSiblingOrder = true
//
//    let scene = GameScene(size: skView.frame.size)
//
//    /* Set the scale mode to scale to fit the window */
//    scene.scaleMode = .AspectFill
//
//    skView.presentScene(scene)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = SKView(frame: view.bounds)
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
//            if let scene = SKScene(fileNamed: "GameScene") {
//                // Set the scale mode to scale to fit the window
//                scene.scaleMode = .aspectFill
//
//                // Present the scene
//                view.presentScene(scene)
//            }
//            let scene = GameScene(size: view.frame.size)
//            let scene = GameScene(size: view.safeAreaLayoutGuide.layoutFrame.size)
            let scene = GameScene(size: CGSize(width: 10, height: 10))
            scene.backgroundColor = .red
            scene.scaleMode = .aspectFill
            view.presentScene(scene)
    
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
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
