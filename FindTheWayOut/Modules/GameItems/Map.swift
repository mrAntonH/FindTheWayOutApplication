//
//  Map.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

final class Map {
    private var tileArray: TileLayers
    
    init(with array: TileLayers) {
        tileArray = array
    }
    
    func setTileArray(tiles: TileLayers) {
        tileArray = tiles
    }
    
    func getTileArray() -> TileLayers {
        return tileArray
    }
}
