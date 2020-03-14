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
}

enum LevelScheme {
    case singleTile(tile: TileType)
    case multiTile(mainTile: TileType, childTiles: [MultiTile])
}
