//
//  LevelCreator.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit
import SpriteKit

final class LevelCreator {
    
    private var level: Level
    
    private var tiles: [Tile]
    
    private let spriteLenght: Int
    
    init(spriteLenght: Int,
         level: Level = .none,
         tiles: [Tile] = []) {
        self.level = level
        self.tiles = tiles
        self.spriteLenght = spriteLenght
    }
    
    func configure(level: Level,
                   with map: Map,
                   backgroundTileMap: SKTileMapNode,
                   mainTileMap: SKTileMapNode,
                   topTileMap: SKTileMapNode) {
        let tiles = createLevel(with: level)
        map.setupTiles(tiles: tiles,
                       backgroundTileMap: backgroundTileMap,
                       mainTileMap: mainTileMap,
                       topTileMap: topTileMap)
    }
    
    private func createLevel(with level: Level) -> TileLayers {
        //let levelScheme = level.scheme
        //let startPosition = CGPoint(x: 0, y: 0)
        var outputTiles = [Tile]()
        var tileIdentity = 0
        
        var backgroundTiles = [[Tile]]()
        var mainTiles = [[Tile]]()
        var topTiles = [[Tile]]()
        
        for items in level.scheme.backgroundLayer {
            for sheme in items {
                //let position = CGPoint(x: spriteLenght * column, y: spriteLenght * row)
                
                switch sheme {
                case .singleTile(let tile):
                    let newTile = Tile(id: tileIdentity,
                                       type: tile,
                                       childTiles: [],
                                       position: CGPoint(x: 0, y: 0),
                                       imageName: tile.getImageName())
                    outputTiles.append(newTile)
                    tileIdentity += 1
                case .multiTile(let mainTile, let childTiles):
                    let childs = childTiles.map { $0.toTiles(with: tileIdentity) }
                    let newTile = Tile(id: tileIdentity,
                                       type: mainTile,
                                       childTiles: childs,
                                       position: CGPoint(x: 0, y: 0),
                                       imageName: mainTile.getImageName())
                    
                    outputTiles.append(newTile)
                    tileIdentity += 1
                case .noTile:
                    continue
                }
            }
            
            backgroundTiles.append(outputTiles)
            outputTiles = []
        }
        
        for items in level.scheme.mainLayer {
            for sheme in items {
                //let position = CGPoint(x: spriteLenght * column, y: spriteLenght * row)
                
                switch sheme {
                case .singleTile(let tile):
                    let newTile = Tile(id: tileIdentity,
                                       type: tile,
                                       childTiles: [],
                                       position: CGPoint(x: 0, y: 0),
                                       imageName: tile.getImageName())
                    outputTiles.append(newTile)
                    tileIdentity += 1
                case .multiTile(let mainTile, let childTiles):
                    let childs = childTiles.map { $0.toTiles(with: tileIdentity) }
                    let newTile = Tile(id: tileIdentity,
                                       type: mainTile,
                                       childTiles: childs,
                                       position: CGPoint(x: 0, y: 0),
                                       imageName: mainTile.getImageName())
                    
                    outputTiles.append(newTile)
                    tileIdentity += 1
                case .noTile:
                    continue
                }
            }
            
            mainTiles.append(outputTiles)
            outputTiles = []
        }
        
        for items in level.scheme.topLayer {
            for sheme in items {
                //let position = CGPoint(x: spriteLenght * column, y: spriteLenght * row)
                
                switch sheme {
                case .singleTile(let tile):
                    let newTile = Tile(id: tileIdentity,
                                       type: tile,
                                       childTiles: [],
                                       position: CGPoint(x: 0, y: 0),
                                       imageName: tile.getImageName())
                    outputTiles.append(newTile)
                    tileIdentity += 1
                case .multiTile(let mainTile, let childTiles):
                    let childs = childTiles.map { $0.toTiles(with: tileIdentity) }
                    let newTile = Tile(id: tileIdentity,
                                       type: mainTile,
                                       childTiles: childs,
                                       position: CGPoint(x: 0, y: 0),
                                       imageName: mainTile.getImageName())
                    
                    outputTiles.append(newTile)
                    tileIdentity += 1
                case .noTile:
                    continue
                }
            }
            
            topTiles.append(outputTiles)
            outputTiles = []
        }
        
        return TileLayers(backgroundTiles: backgroundTiles,
                          mainTiles: mainTiles,
                          topTiles: topTiles)
    }
    
}
