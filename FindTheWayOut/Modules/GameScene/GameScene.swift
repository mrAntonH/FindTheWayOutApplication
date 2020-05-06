//
//  GameScene.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 07/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit
import GameplayKit
import RxSwift
import RxCocoa

class GameScene: SKScene {
    
    private var gameConfiguration: GameConfiguration!
    private var map: Map!
    
    var gameState: GameState!
    
    let sceneManager = SceneManager.shared
    private let disposeBag = DisposeBag()
    
    override func didMove(to view: SKView) {
        
//        let vertex1 = ServerVertex(id: 0,
//                                   graphId: 0,
//                                   nearByVertex: [1, 2],
//                                   exit: false,
//                                   fire: false)
//        let vertex2 = ServerVertex(id: 1,
//                                   graphId: 0,
//                                   nearByVertex: [0],
//                                   exit: true,
//                                   fire: false)
//        let vertex3 = ServerVertex(id: 2,
//                                   graphId: 0,
//                                   nearByVertex: [0],
//                                   exit: false,
//                                   fire: false)
//        
//        let vertexes = [vertex1, vertex2, vertex3]
//        
//        let sVertexes = ServerVertexes(vertexes: vertexes)
        
//        ApiClient
//            .startGame(graphVertexes: sVertexes)
//            .subscribe(onNext: { postsList in
//                print("List of posts:", postsList)
//
//                ApiClient.updateWay(userNumberLocation: 0)
//                    .subscribe(onNext: { value in
//                        let val = value
//                        print(val)
//                        ApiClient.checkFire(userNumberLocation: 0)
//                            .subscribe(onNext: { value1 in
//                                print(value1)
//                            })
//                    })
//                    .disposed(by: self.disposeBag)
//
//            }, onError: { error in
//                switch error {
//                case ApiError.conflict:
//                    print("Conflict error")
//                case ApiError.forbidden:
//                    print("Forbidden error")
//                case ApiError.notFound:
//                    print("Not found error")
//                default:
//                    print("Unknown error:", error)
//                }
//            })
//            .disposed(by: disposeBag)

        //guard sceneManager.gameScene == nil else { return }
        
        // sceneManager.gameScene = self
        
        setupStartConfiguration()
        
    }
    
    private func setGesture() {
        let pinchGesture = UIPinchGestureRecognizer()
        pinchGesture.addTarget(self, action: #selector(pinchGestureAction))
        view?.addGestureRecognizer(pinchGesture)
    }
    
    private func setupStartConfiguration() {
        let cameraHelper = CameraHelper()
        gameConfiguration = GameConfiguration(cameraHelper: cameraHelper)
        setupCamera()
        setGesture()
        backgroundColor = SKColor(red: 27 / 255,
                                  green: 38 / 255,
                                  blue: 49 / 255,
                                  alpha: 1)
        load(level: .level1)
    }
    
    private func setupCamera() {
        let myCamera = SKCameraNode()
        let cameraPosition = gameConfiguration.cameraHelper.getCurrentLocation()
        myCamera.position = CGPoint(x: cameraPosition.x + (view?.frame.width ?? 0) / 2,
                                    y: cameraPosition.y + (view?.frame.height ?? 0) / 2)
        myCamera.setScale(3000)
        camera = myCamera
        addChild(myCamera)
    }
    
    private func load(level: Level) {
        let levelTiles = LevelCreator.shared.createLevel(with: level)
        let mapTileNode = Map(with: levelTiles,
                              columns: 23,
                              rows: 20,
                              tileSize: CGSize(width: 64,
                                               height: 64))
        mapTileNode.anchorPoint = CGPoint(x: 0, y: 0)
        mapTileNode.position = CGPoint(x: 0,
                                       y: 0)
        mapTileNode.zPosition = 0
        map = mapTileNode
        addChild(mapTileNode)
        
        if !gameState.isProccesingStep.value {
            gameState
                .step
                .accept(.startGame(level.levelGraph))
        }
        
        gameState
            .eventInput
            .configureWay
            .subscribe(onNext: { [unowned self] way in
                
                if way.exit {
                    print("Exit is here!")
                    self.gameState.step.accept(.finishGame(0))
                } else if way.blocked {
                    self.gameState.step.accept(.finishGame(0))
                    print("Blocked need help")
                } else {
                    self.map.selectWay(with: way)
                }
                
                self.gameState.isSelectWayAvailable.accept(true)
            })
            .disposed(by: disposeBag)
        
        gameState
            .eventInput
            .fireVertexes
            .subscribe(onNext: { [unowned self] fires in
                self.map.fire(vertexes: fires)
            })
            .disposed(by: disposeBag)
        
        camera?.position = CGPoint(x: map.frame.midX,
                                   y: map.frame.midY)
    }
    
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
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
          return
        }
        
        let location = touch.location(in: self)
        if gameState.isSelectWayAvailable.value {
            if let number = map.selectZone(at: location) {
                gameState.step.accept(.readyGetWay(number))
                gameState.isSelectWayAvailable.accept(false)
            }
        }
    
        let previousCameraLocation = touch.previousLocation(in: self)
        if let camera = camera {
            camera.position.x -= location.x - previousCameraLocation.x
            camera.position.y -= location.y - previousCameraLocation.y
            gameConfiguration.cameraHelper.setPreviousLocation(point: camera.position)
        }
       
    }
    
}
