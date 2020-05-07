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
    
    private var tiles: [Tile] = []
    
    private let spriteLenght: Int = 64
    
    static let shared = LevelCreator()
    
    private init() {}
    
    func createLevel(with level: Level) -> TileLayers {
        var outputTiles = [Tile]()
        
        var backgroundTiles = [[Tile]]()
        
        for items in level.scheme.backgroundLayer {
            for sheme in items {
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
