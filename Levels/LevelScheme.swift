//
//  LevelCreatorScheme.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 14/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit

struct MultiTile {
    var tileType: TileType
    var position: CGPoint
    var rotation: CGFloat?
    var childTiles: [MultiTile]
    
    func toTiles(with perentId: Int) -> Tile {
        var chiledTiles = [Tile]()
        for item in childTiles {
            let newChildTile = item.toTiles(with: perentId)
            chiledTiles.append(newChildTile)
        }
        let childTiles = Tile(id: perentId,
                              type: tileType,
                              childTiles: chiledTiles,
                              position: position,
                              rotation: rotation,
                              imageName: tileType.getImageName())
        return childTiles
        
    }
}

enum LevelScheme {
    case singleTile(tile: TileType)
    case multiTile(mainTile: TileType, childTiles: [MultiTile])
}
