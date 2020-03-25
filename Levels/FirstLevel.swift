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
    var mainLayer: [[LevelScheme]]
    var topLayer: [[LevelScheme]]
}

class FirstLevel: Levels {
    private let levelLayers: LevelLayres
    
    init() {
        // Level description: Every tiles describe how single or multi items in two decimal array
        // Rows(lines) desribes from top to bottom image orientation, on next step their been reversed
        var backgroundLayer = [[LevelScheme]]()
        
        //Backround layer:
        
        var row = [LevelScheme]()
        row.append(.singleTile(tile: .lawnGroundFirst))
        row.append(.singleTile(tile: .lawnGroundThird))
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
                                                     childTiles: [])]))
        row.append(.singleTile(tile: .woodFloor))
        row.append(.singleTile(tile: .woodFloor))
        row.append(.singleTile(tile: .woodFloor))
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
        
        row.append(.singleTile(tile: .lawnGroundFirst))
        row.append(.singleTile(tile: .lawnGroundFourth))
        row.append(.singleTile(tile: .wallBottomLeftCorner))
        row.append(.singleTile(tile: .wallHorizantalCoupleLines))
        row.append(.singleTile(tile: .wallBottomRightCorner))
        
        backgroundLayer.append(row)
        row.removeAll()
        
        let layers = LevelLayres(backgroundLayer: backgroundLayer,
                                 mainLayer: [],
                                 topLayer: [])
        self.levelLayers = layers
    }
    
    func getLevel() -> LevelLayres {
        return levelLayers
    }
}
