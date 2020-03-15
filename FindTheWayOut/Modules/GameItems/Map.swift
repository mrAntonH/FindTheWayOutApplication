//
//  Map.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

final class Map {
    private var tileArray: [Tile] = []
    
    init(with array: [Tile]) {
        tileArray = array
    }
    
    func setTileArray(tiles: [Tile]) {
        tileArray = tiles
    }
    
    func getTileArray() -> [Tile] {
        return tileArray
    }
}
