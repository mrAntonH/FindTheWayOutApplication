//
//  FirstLevel.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 14/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit

protocol Levels {
    
    func getLevel() -> LevelLayres
}

struct LevelLayres {
    var backgroundLayer: [[LevelScheme]]
}

class FirstLevel: Levels {
    private let levelLayers: LevelLayres
    
    init() {
        var backgroundLayer = [[LevelScheme]]()
        
        var row = [LevelScheme]()
        row.append(.singleTile(tile: .lawn))
        row.append(.singleTile(tile: .lawn))
        row.append(.singleTile(tile: .wallTopLeftCorner))
        row.append(.singleTile(tile: .wallHorizantalCoupleLines))
        row.append(.singleTile(tile: .wallTopRightCorner))
        
        backgroundLayer.append(row)
        row.removeAll()
        
        row.append(.singleTile(tile: .wallEndLeft))
        row.append(.singleTile(tile: .wallHorizantalCoupleLines))
        row.append(.singleTile(tile: .wallBottomRightCorner))
        row.append(.singleTile(tile: .woodFloor))
        row.append(.singleTile(tile: .wallVerticalCoupleLines))
        
        backgroundLayer.append(row)
        row.removeAll()
        
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])],
                              idNode: 0))
        row.append(.singleTile(tile: .woodFloor, idNode: 0))
        row.append(.singleTile(tile: .woodFloor, idNode: 0))
        row.append(.singleTile(tile: .woodFloor, idNode: 0))
        row.append(.singleTile(tile: .wallVerticalCoupleLines))
        
        backgroundLayer.append(row)
        row.removeAll()
        
        row.append(.singleTile(tile: .wallEndLeft))
        row.append(.singleTile(tile: .wallHorizantalCoupleLines))
        row.append(.singleTile(tile: .wallTopRightCorner))
        row.append(.singleTile(tile: .woodFloor))
        row.append(.singleTile(tile: .wallVerticalCoupleLines))
        
        backgroundLayer.append(row)
        row.removeAll()
        
        row.append(.singleTile(tile: .lawn))
        row.append(.singleTile(tile: .lawn))
        row.append(.singleTile(tile: .wallBottomLeftCorner))
        row.append(.singleTile(tile: .wallHorizantalCoupleLines))
        row.append(.singleTile(tile: .wallBottomRightCorner))
        
        backgroundLayer.append(row)
        row.removeAll()
        
        let layers = LevelLayres(backgroundLayer: backgroundLayer)
        self.levelLayers = layers
    }
    
    func getLevel() -> LevelLayres {
        return levelLayers
    }
}
