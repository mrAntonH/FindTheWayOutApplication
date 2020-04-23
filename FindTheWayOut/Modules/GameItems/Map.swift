//
//  Map.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation
import SpriteKit

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
    
    func setupTiles(tiles: TileLayers,
                    backgroundTileMap: SKTileMapNode,
                    mainTileMap: SKTileMapNode,
                    topTileMap: SKTileMapNode) {
        tileArray = tiles
        
        guard let upLevelTileSet = SKTileSet(named: "Up Level Tiles") else {
            fatalError("Object Tiles Tile Set not found")
        }
        
        guard let groundTileSet = SKTileSet(named: "Ground Tiles") else {
            fatalError("Object Tiles Tile Set not found")
        }
        
        guard let thingsTileSet = SKTileSet(named: "Things") else {
            fatalError("Object Tiles Tile Set not found")
        }
        
        guard let doorsTileSet = SKTileSet(named: "Doors") else {
            fatalError("Object Tiles Tile Set not found")
        }
        
        let allTileSet = SKTileSet(tileGroups: upLevelTileSet.tileGroups
            + groundTileSet.tileGroups
            + thingsTileSet.tileGroups
            + doorsTileSet.tileGroups)
         
        backgroundTileMap.tileSet = allTileSet
        mainTileMap.tileSet = allTileSet
        topTileMap.tileSet = allTileSet
        
        for (row, section) in tileArray.backgroundTiles.reversed().enumerated() {
            for (column, item) in section.enumerated() {
                let tile = allTileSet.tileGroups.first(where: {$0.name == item.type.getImageName()})
                backgroundTileMap.setTileGroup(tile, forColumn: column, row: row)
            }
        }
    }
}
