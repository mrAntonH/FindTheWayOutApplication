//
//  LevelCreator.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit

final class LevelCreator {
    
    private let levelScheme1 = [[TileType]]()
    
    static func createLevel(with levelScheme: [[LevelScheme]], spriteLenght: Int) -> [Tile] {
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
                case .multiTile(let mainTile, let childTiles):
                    
                }
                
                
                outputTiles.append(newTile)
                tileIdentity += 1
            }
        }
        
        return outputTiles
    }
    
    
}
