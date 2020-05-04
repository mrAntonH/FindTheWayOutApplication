//
//  LevelCreator.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit
import SpriteKit

final class LevelCreator {
    
//    private var level: Level
    
    private var tiles: [Tile] = []
    
    private let spriteLenght: Int = 64
    
     static let shared = LevelCreator()
    
//    init(spriteLenght: Int,
//         level: Level = .none,
//         tiles: [Tile] = []) {
//        self.level = level
//        self.tiles = tiles
//        self.spriteLenght = spriteLenght
//    }
    
    private init() {}
    
//    func configure(level: Level,
//                   with map: Map,
//                   backgroundTileMap: SKTileMapNode) {
//        let tiles = createLevel(with: level)
//        map.setupTiles(tiles: tiles,
//                       backgroundTileMap: backgroundTileMap)
//    }
    
    func createLevel(with level: Level) -> TileLayers {
        //let levelScheme = level.scheme
        //let startPosition = CGPoint(x: 0, y: 0)
        var outputTiles = [Tile]()
        
        var backgroundTiles = [[Tile]]()
        
        for items in level.scheme.backgroundLayer {
            for sheme in items {
                //let position = CGPoint(x: spriteLenght * column, y: spriteLenght * row)
                
                switch sheme {
                case .singleTile(let tile, let idNode):
                    let newTile = Tile(id: idNode,
                                       type: tile,
                                       childTiles: [],
                                       position: CGPoint(x: 0, y: 0),
                                       imageName: tile.getImageName())
                    outputTiles.append(newTile)
                case .multiTile(let mainTile, let childTiles, let idNode):
                    let childs = childTiles.map { $0.toTiles(with: idNode) }
                    let newTile = Tile(id: idNode,
                                       type: mainTile,
                                       childTiles: childs,
                                       position: CGPoint(x: 0, y: 0),
                                       imageName: mainTile.getImageName())
                    
                    outputTiles.append(newTile)
                case .noTile:
                    continue
                }
            }
            
            backgroundTiles.append(outputTiles)
            outputTiles = []
        }
        
        return TileLayers(backgroundTiles: backgroundTiles)
    }
    
}
