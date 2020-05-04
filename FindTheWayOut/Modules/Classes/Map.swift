//
//  Map.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit

final class Map: SKTileMapNode {
    
    private let tileManager = TileManager.shared
    
    private var tileArray = TileLayers(backgroundTiles: [])
    private var interectiveMap: [Int: Zone] = [:]
    
    init(with array: TileLayers,
         columns: Int,
         rows: Int,
         tileSize: CGSize) {
        super.init(tileSet: tileManager.getAllTileSets(),
                   columns: columns,
                   rows: rows,
                   tileSize: tileSize)
        self.tileArray = array
        configureTilesMap()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func selectZone(at point: CGPoint) {
        interectiveMap.forEach { key, value in
            if let frame = value.frame {
                if frame.contains(point) {
                    // TEST CODE:
                    let barra = SKShapeNode(rect: frame)
                    barra.name = "bar"
                    barra.fillColor = .cyan
//                    let colorAction = SKAction.colorize(with: .red, colorBlendFactor: 1.0, duration: 0.2)
//                    let uncolorAction = SKAction.colorize(with: .red, colorBlendFactor: 0.0, duration: 0.2)
//                    let seq = SKAction.sequence([colorAction, uncolorAction])
//                    let repeatAction = SKAction.repeat(seq, count: 10)
                    barra.zPosition = 5
//                    barra.run(repeatAction)
                    
//                    if let fire = SKEmitterNode(fileNamed: "FireEffect") {
//                        fire.position = CGPoint(x: frame.midX, y: frame.midY)
//                        addChild(fire)
//
//                    }
                    self.addChild(barra)
                    
                    /////
                }
            }
        }
    }
    
    private func configureTilesMap() {
        
        let tileSet = tileManager.getAllTileSets()
        
        for (row, section) in tileArray.backgroundTiles.reversed().enumerated() {
            for (column, item) in section.enumerated() {
                configureZone(with: item, row: row, column: column)
                let tile = tileSet.tileGroups.first(where: {$0.name == item.type.getImageName()})
                setTileGroup(tile, forColumn: column, row: row)
            }
        }
        updateFrameZone()
    }
    
    private func configureZone(with tile: Tile, row: Int, column: Int) {
        if let id = tile.id {
            if var existeZone = interectiveMap[id] {
                existeZone.rowOfMaxTile = row
                existeZone.columnOfMaxTile = column
                interectiveMap[id] = existeZone
            } else {
                interectiveMap[id] = Zone(rowOfMinTile: row,
                                          rowOfMaxTile: row,
                                          columnOfMinTile: column,
                                          columnOfMaxTile:column)
            }
        }
    }
    
    private func updateFrameZone() {
        interectiveMap = Dictionary(uniqueKeysWithValues: interectiveMap.map { (key, value) in
            var newValue = value
            let startX = CGFloat(newValue.columnOfMinTile) * tileSize.width
            let startY = CGFloat(newValue.rowOfMinTile) * tileSize.height
            let width = CGFloat(newValue.columnOfMaxTile - newValue.columnOfMinTile + 1)
                * tileSize.width
            let height = CGFloat(newValue.rowOfMaxTile - newValue.rowOfMinTile + 1)
                * tileSize.height
            let frame = CGRect(x: startX,
                               y: startY,
                               width: width,
                               height: height)
            newValue.frame = frame
            setBorders(frame: frame)
            setTitle(forRoom: key,
                     coordinate: CGPoint(x: startX + width / 2,
                                         y: startY + height / 2))
            return (key, newValue)
        })

    }
    
    private func setTitle(forRoom number: Int, coordinate: CGPoint) {
        let text = SKLabelNode(text: "Room \(number)")
        text.fontName = StandartFonts.AmericanTypewriterBold.description
        text.position = coordinate
        text.zPosition = 100
        addChild(text)
    }
    
    private func setBorders(frame: CGRect) {
        let shape = SKShapeNode(rect: frame)
        shape.strokeColor = .white
        addChild(shape)
    }
    
}