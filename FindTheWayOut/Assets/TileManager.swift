//
//  TileManager.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 01/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit

final class TileManager {
    static let shared = TileManager()
    
    private init() {}
    
    func getAllTileSets() -> SKTileSet {
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
        
        guard let windowsTileSet = SKTileSet(named: "Window") else {
            fatalError("Object Tiles Tile Set not found")
        }
        
        let allTileSet = SKTileSet(tileGroups:
            upLevelTileSet.tileGroups
                + groundTileSet.tileGroups
                + thingsTileSet.tileGroups
                + doorsTileSet.tileGroups
                + windowsTileSet.tileGroups)
        return allTileSet
    }
}
