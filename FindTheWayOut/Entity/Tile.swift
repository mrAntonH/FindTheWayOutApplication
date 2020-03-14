//
//  Tile.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit

struct Tile {
    let id: Int
    var type: TileType
    var childTiles: [ChildTile]
    var position: CGPoint
    var imageName: String
    
    init(id: Int,
         type: TileType,
         childTiles: [ChildTile],
         position: CGPoint,
         imageName: String) {
        self.id = id
        self.type = type
        self.childTiles = childTiles
        self.position = position
        self.imageName = imageName
    }
}

struct ChildTile {
    let perentId: Int
    var type: TileType
    var childTiles: [ChildTile]
    var position: CGPoint
    var rotation: CGFloat
    var imageName: String
    
    init(perentId: Int,
         type: TileType,
         childTiles: [ChildTile],
         position: CGPoint,
         rotation: CGFloat,
         imageName: String) {
        self.perentId = perentId
        self.type = type
        self.childTiles = childTiles
        self.position = position
        self.rotation = rotation
        self.imageName = imageName
        
    }
}
