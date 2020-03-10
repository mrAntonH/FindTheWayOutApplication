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
    var position: CGPoint
    var image: UIImage
    
    init(id: Int,
         type: TileType,
         position: CGPoint,
         image: UIImage) {
        self.id = id
        self.type = type
        self.position = position
        self.image = image
    }
}
