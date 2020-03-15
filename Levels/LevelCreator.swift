//
//  LevelCreator.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit

final class LevelCreator {
    
    private var level: Level
    
    private var tiles: [Tile]
    
    private let spriteLenght: Int
    
    init(spriteLenght: Int,
         level: Level = .none,
         tiles: [Tile] = []) {
        self.level = level
        self.tiles = tiles
        self.spriteLenght = spriteLenght
    }
    
    func configure(level: Level,
                   with map: Map) {
        let tiles = createLevel(with: level)
        map.setTileArray(tiles: tiles)
    }
    
    private func createLevel(with level: Level) -> [Tile] {
        let levelScheme = level.levelScheme
        //let startPosition = CGPoint(x: 0, y: 0)
        var outputTiles = [Tile]()
        var tileIdentity = 0
        for (row, tiles) in levelScheme.reversed().enumerated() {
            for (column, typeTile) in tiles.enumerated() {
                let position = CGPoint(x: spriteLenght * column, y: spriteLenght * row)
                
                switch typeTile {
                case .singleTile(let tile):
                    let newTile = Tile(id: tileIdentity,
                                       type: tile,
                                       childTiles: [],
                                       position: position,
                                       imageName: tile.getImageName())
                    outputTiles.append(newTile)
                    tileIdentity += 1
                case .multiTile(let mainTile, let childTiles):
                    let childs = childTiles.map { $0.toChildTiles(with: tileIdentity) }
                    let newTile = Tile(id: tileIdentity,
                                       type: mainTile,
                                       childTiles: childs,
                                       position: position,
                                       imageName: mainTile.getImageName())
                    
                    outputTiles.append(newTile)
                    tileIdentity += 1
                }
            }
        }
        
        return outputTiles
    }
    
}
