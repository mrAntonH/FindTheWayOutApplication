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

final class FirstLevel: Levels {
    private let levelLayers: LevelLayres
    
    init() {
        var backgroundLayer = [[LevelScheme]]()
        
        var row = [LevelScheme]()
        //0
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .lawn)) //3
        row.append(.singleTile(tile: .metalFloor)) //4
        row.append(.singleTile(tile: .metalFloor)) //5
        row.append(.singleTile(tile: .metalFloor)) //6
        row.append(.singleTile(tile: .metalFloor)) //7
        row.append(.singleTile(tile: .lawn)) //8
        row.append(.singleTile(tile: .lawn)) //9
        row.append(.singleTile(tile: .lawn)) //10
        row.append(.singleTile(tile: .lawn)) //11
        row.append(.singleTile(tile: .lawn)) //12
        row.append(.singleTile(tile: .lawn)) //13
        row.append(.singleTile(tile: .lawn)) //14
        row.append(.singleTile(tile: .lawn)) //15
        row.append(.singleTile(tile: .lawn)) //16
        row.append(.singleTile(tile: .lawn)) //17
        row.append(.singleTile(tile: .lawn)) //18
        row.append(.singleTile(tile: .lawn)) //19
        row.append(.singleTile(tile: .lawn)) //20
        row.append(.singleTile(tile: .lawn)) //21
        row.append(.singleTile(tile: .lawn)) //22
        row.append(.singleTile(tile: .lawn)) //23
        row.append(.singleTile(tile: .lawn)) //24
        row.append(.singleTile(tile: .lawn)) //25
        row.append(.singleTile(tile: .lawn)) //26
        row.append(.singleTile(tile: .lawn)) //27
        row.append(.singleTile(tile: .lawn)) //28
        row.append(.singleTile(tile: .lawn)) //29
        row.append(.singleTile(tile: .lawn)) //30
        row.append(.singleTile(tile: .lawn)) //31
        row.append(.singleTile(tile: .lawn)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        
        backgroundLayer.append(row)
        row.removeAll()
        //1
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .lawn)) //3
        row.append(.singleTile(tile: .wallEndTop)) //4
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterHorizontaly,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //5
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterHorizontaly,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //6
        row.append(.singleTile(tile: .wallEndLeft)) //7
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //8
        row.append(.singleTile(tile: .wallTopLineAndTwoCorners)) //9
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //10
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //11
        row.append(.singleTile(tile: .wallEndRight)) //12
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowTop,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //13
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowTop,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //14
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowTop,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //15
        row.append(.singleTile(tile: .wallEndLeft)) //16
        row.append(.singleTile(tile: .wallTopLineAndTwoCorners)) //17
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //18
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //19
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //20
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //21
        row.append(.singleTile(tile: .wallTopLineAndTwoCorners)) //22
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //23
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //24
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //25
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //26
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //27
        row.append(.singleTile(tile: .wallTopLineAndTwoCorners)) //28
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //29
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //30
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //31
        row.append(.singleTile(tile: .wallTopRightCorner)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //2
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .lawn)) //3
        row.append(.singleTile(tile: .wallEndBottom)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //8
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //9
        row.append(.singleTile(tile: .woodFloor)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //16
        row.append(.singleTile(tile: .wallEndBottom))        //17
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //21
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //24
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //26
        row.append(.singleTile(tile: .woodFloor)) //27
        row.append(.singleTile(tile: .wallEndBottom)) //28
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //3
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .lawn)) //3
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //8
        row.append(.singleTile(tile: .wallBottomLeftCorner)) //9
        row.append(.singleTile(tile: .wallEndRight)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //16
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //21
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //24
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //26
        row.append(.singleTile(tile: .woodFloor)) //27
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //28
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //4
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .lawn)) //3
        row.append(.singleTile(tile: .wallEndTop)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 15)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 4)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 4)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 1)) //16
        row.append(.singleTile(tile: .wallEndTop)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //21
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //24
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //26
        row.append(.singleTile(tile: .woodFloor)) //27
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //28
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        
        backgroundLayer.append(row)
        row.removeAll()
        //5
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallTopLeftCorner)) //3
        row.append(.singleTile(tile: .wallBottomRightCorner)) //4
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterHorizontaly,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //5
        row.append(.singleTile(tile: .wallEndLeft)) //6
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //7
        row.append(.singleTile(tile: .wallTopRightCorner)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 4)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 4)) //10
        row.append(.singleTile(tile: .wallEndLeft)) //11
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //12
        row.append(.singleTile(tile: .wallTopLineAndTwoCorners)) //13
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //14
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //15
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //16
        row.append(.singleTile(tile: .wallRightLineAndTwoCorners)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //21
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //24
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //26
        row.append(.singleTile(tile: .wallSimpleTopLeftCorner)) //27
        row.append(.singleTile(tile: .wallSimpleTopRightCorner)) //28
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //31
        row.append(.singleTile(tile: .wallEndBottom)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //6
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 3)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 3)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 3)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 3)) //7
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 4)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 4)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 5)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 5)) //12
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 6)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 6)) //15
        row.append(.singleTile(tile: .woodFloor)) //16
        row.append(.singleTile(tile: .wallEndBottom)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //21
        row.append(.singleTile(tile: .wallEndBottom)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //24
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //26
        row.append(.singleTile(tile: .wallSingleLineLeft)) //27
        row.append(.singleTile(tile: .wallSingleLineRight)) //28
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //31
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowRight,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //7
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 3)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 3)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 3)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 3)) //7
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 4)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 4)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 5)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 5)) //12
        row.append(.singleTile(tile: .wallEndBottom)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 6)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 6)) //15
        row.append(.singleTile(tile: .woodFloor)) //16
        row.append(.singleTile(tile: .woodFloor)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 2)) //21
        row.append(.singleTile(tile: .woodFloor)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //24
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 17)) //26
        row.append(.singleTile(tile: .wallSingleLineLeft)) //27
        row.append(.singleTile(tile: .wallSingleLineRight)) //28
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //31
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowRight,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //8
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallLeftLineAndTwoCorners)) //3
        row.append(.singleTile(tile: .wallEndRight)) //4
        row.append(.singleTile(tile: .woodFloor)) //5
        row.append(.singleTile(tile: .wallTopLeftCorner)) //6
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //7
        row.append(.singleTile(tile: .wallBottomRightCorner)) //8
        row.append(.singleTile(tile: .woodFloor)) //9
        row.append(.singleTile(tile: .wallEndTop)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 5)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 5)) //12
        row.append(.singleTile(tile: .woodFloor)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 6)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 6)) //15
        row.append(.singleTile(tile: .wallTopLeftCorner)) //16
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //17
        row.append(.singleTile(tile: .wallEndRight)) //18
        row.append(.singleTile(tile: .woodFloor)) //19
        row.append(.singleTile(tile: .woodFloor)) //20
        row.append(.singleTile(tile: .wallEndLeft)) //21
        row.append(.singleTile(tile: .wallTopLineAndTwoCorners)) //22
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //23
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //24
        row.append(.singleTile(tile: .wallTopRightCorner)) //25
        row.append(.singleTile(tile: .woodFloor)) //26
        row.append(.singleTile(tile: .wallSimpleBottomLeftCorner)) //27
        row.append(.singleTile(tile: .wallSimpleRightButtomCorner)) //28
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //31
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowRight,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //32 //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //9
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //5
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //9
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 5)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 5)) //12
        row.append(.singleTile(tile: .wallEndTop)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 6)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 6)) //15
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //21
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //24
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 18)) //31
        row.append(.singleTile(tile: .wallEndTop)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34

        backgroundLayer.append(row)
        row.removeAll()
        //10
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallEndBottom)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //5
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //9
        row.append(.singleTile(tile: .wallLeftLineAndTwoCorners)) //10
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //11
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //12
        row.append(.singleTile(tile: .wallBottomLineAndTwoCorners)) //13
        row.append(.singleTile(tile: .wallEndRight)) //14
        row.append(.singleTile(tile: .woodFloor)) //15
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //21
        row.append(.singleTile(tile: .wallEndBottom)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //24
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallTopLeftCorner)) //29
        row.append(.singleTile(tile: .wallEndRight)) //30
        row.append(.singleTile(tile: .woodFloor)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //11
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //5
        row.append(.singleTile(tile: .wallEndBottom)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //9
        row.append(.singleTile(tile: .wallEndBottom)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //15
        row.append(.singleTile(tile: .wallEndBottom)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //21
        row.append(.singleTile(tile: .woodFloor)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //24
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //12
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //5
        row.append(.singleTile(tile: .woodFloor)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //9
        row.append(.singleTile(tile: .woodFloor)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //15
        row.append(.singleTile(tile: .woodFloor)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //21
        row.append(.singleTile(tile: .woodFloor)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //24
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //13
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 7)) //5
        row.append(.singleTile(tile: .woodFloor)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 8)) //9
        row.append(.singleTile(tile: .woodFloor)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 9)) //15
        row.append(.singleTile(tile: .woodFloor)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 10)) //21
        row.append(.singleTile(tile: .wallEndTop)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //24
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //14
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallEndTop)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //5
        row.append(.singleTile(tile: .wallEndTop)) //6
        row.append(.singleTile(tile: .woodFloor)) //7
        row.append(.singleTile(tile: .wallEndLeft)) //8
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //9
        row.append(.singleTile(tile: .wallTopLineAndTwoCorners)) //10
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //11
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //12
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //13
        row.append(.singleTile(tile: .woodFloor)) //14
        row.append(.singleTile(tile: .wallSimpleTopLeftCorner)) //15
        row.append(.singleTile(tile: .wallSimpleTopRightCorner)) //16
        row.append(.singleTile(tile: .woodFloor)) //17
        row.append(.singleTile(tile: .wallEndLeft)) //18
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //19
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //20
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //21
        row.append(.singleTile(tile: .wallRightLineAndTwoCorners)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //24
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //15
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //5
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //9
        row.append(.singleTile(tile: .wallEndBottom)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //14
        row.append(.singleTile(tile: .wallSingleLineLeft)) //15
        row.append(.singleTile(tile: .wallSingleLineRight)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //21
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 16)) //24
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //16
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallEndBottom)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //5
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //9
        row.append(.singleTile(tile: .woodFloor)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //14
        row.append(.singleTile(tile: .wallSimpleBottomLeftCorner)) //15
        row.append(.singleTile(tile: .wallSimpleRightButtomCorner)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //21
        row.append(.singleTile(tile: .wallEndBottom)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //24
        row.append(.singleTile(tile: .wallEndBottom)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallEndBottom)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.singleTile(tile: .wallEndBottom)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //17
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //5
        row.append(.singleTile(tile: .wallEndBottom)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //9
        row.append(.singleTile(tile: .wallEndTop)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //14
        row.append(.singleTile(tile: .woodFloor)) //15
        row.append(.singleTile(tile: .woodFloor)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //21
        row.append(.singleTile(tile: .woodFloor)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //24
        row.append(.singleTile(tile: .woodFloor)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .woodFloor)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //32
        row.append(.singleTile(tile: .metalFloor)) //33
        row.append(.singleTile(tile: .metalFloor)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //18
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 11)) //5
        row.append(.singleTile(tile: .woodFloor)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 12)) //9
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //11
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 13)) //14
        row.append(.singleTile(tile: .wallEndTop)) //15
        row.append(.singleTile(tile: .woodFloor)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 14)) //21
        row.append(.singleTile(tile: .wallEndTop)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //24
        row.append(.singleTile(tile: .woodFloor)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .woodFloor)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.singleTile(tile: .wallEndTop)) //32
        row.append(.singleTile(tile: .metalFloor)) //33
        row.append(.singleTile(tile: .metalFloor)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //19
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallTopLeftCorner)) //3
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //4
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //5
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //6
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //7
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //8
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //9
        row.append(.singleTile(tile: .wallBottomLineAndTwoCorners)) //10
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //11
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //12
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //13
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //14
        row.append(.singleTile(tile: .wallBottomLineAndTwoCorners)) //15
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //16
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //17
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //18
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //19
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //20
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //21
        row.append(.singleTile(tile: .wallBottomRightCorner)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //24
        row.append(.singleTile(tile: .woodFloor)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallEndTop)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.singleTile(tile: .wallEndBottom)) //32
        row.append(.singleTile(tile: .metalFloor)) //33
        row.append(.singleTile(tile: .metalFloor)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //20
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])],
                              idNode: 22)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //21
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //24
        row.append(.singleTile(tile: .woodFloor)) //25
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //26
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //27
        row.append(.singleTile(tile: .woodFloor, idNode: 19)) //28
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //29
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //30
        row.append(.singleTile(tile: .woodFloor, idNode: 20)) //31
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //32
        row.append(.singleTile(tile: .metalFloor)) //33
        row.append(.singleTile(tile: .metalFloor)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //21
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallEndBottom)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])],
                              idNode: 22)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //16
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //17
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //18
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //19
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //20
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //21
        row.append(.singleTile(tile: .woodFloor, idNode: 22)) //22
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //23
        row.append(.singleTile(tile: .woodFloor, idNode: 21)) //24
        row.append(.singleTile(tile: .woodFloor)) //25
        row.append(.singleTile(tile: .wallTopLeftCorner)) //26
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //27
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //28
        row.append(.singleTile(tile: .wallBottomLineAndTwoCorners)) //29
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //30
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //31
        row.append(.singleTile(tile: .wallTopRightCorner)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //22
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallEndTop)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.singleTile(tile: .wallTopLeftCorner)) //17
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //18
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //19
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //20
        row.append(.singleTile(tile: .wallEndRight)) //21
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterHorizontaly,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //22
        row.append(.singleTile(tile: .wallEndLeft)) //23
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //24
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //25
        row.append(.singleTile(tile: .wallBottomRightCorner)) //26
        row.append(.singleTile(tile: .kitchenFloor)) //27
        row.append(.singleTile(tile: .kitchenFloor)) //28
        row.append(.singleTile(tile: .kitchenFloor)) //29
        row.append(.singleTile(tile: .kitchenFloor)) //30
        row.append(.singleTile(tile: .kitchenFloor)) //31
        row.append(.singleTile(tile: .wallEndBottom)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //23
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.singleTile(tile: .wallEndBottom)) //17
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //18
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //19
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //20
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //21
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //22
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //23
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //24
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //25
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //26
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //27
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //28
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //29
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //30
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //31
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowRight,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //24
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallEndTop)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //17
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //18
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //19
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //20
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //21
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //22
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //23
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //24
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //25
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //26
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //27
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //28
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //29
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //30
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //31
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowRight,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //25
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //17
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //18
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //19
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //20
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //21
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //22
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //23
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //24
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //25
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //26
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //27
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //28
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //29
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //30
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //31
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowRight,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //26
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallEndBottom)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.singleTile(tile: .wallEndTop)) //17
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //18
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //19
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //20
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //21
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //22
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //23
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //24
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //25
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //26
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //27
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //28
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //29
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //30
        row.append(.singleTile(tile: .kitchenFloor, idNode: 25)) //31
        row.append(.singleTile(tile: .wallEndTop)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //27
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallEndBottom)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.singleTile(tile: .wallLeftLineAndTwoCorners)) //17
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //18
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //19
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //20
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //21
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //22
        row.append(.singleTile(tile: .wallEndRight)) //23
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //24
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //25
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //26
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //27
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //28
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //29
        row.append(.multiTile(mainTile: .kitchenFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //30
        row.append(.singleTile(tile: .wallEndLeft)) //31
        row.append(.singleTile(tile: .wallBottomRightCorner)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //28
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.singleTile(tile: .wallEndBottom)) //17
        row.append(.singleTile(tile: .metalFloor)) //18
        row.append(.singleTile(tile: .metalFloor)) //19
        row.append(.singleTile(tile: .metalFloor)) //20
        row.append(.singleTile(tile: .metalFloor)) //21
        row.append(.singleTile(tile: .metalFloor)) //22
        row.append(.singleTile(tile: .metalFloor)) //23
        row.append(.singleTile(tile: .metalFloor)) //24
        row.append(.singleTile(tile: .metalFloor)) //25
        row.append(.singleTile(tile: .metalFloor)) //26
        row.append(.singleTile(tile: .lawn)) //27
        row.append(.singleTile(tile: .lawn)) //28
        row.append(.singleTile(tile: .lawn)) //29
        row.append(.singleTile(tile: .lawn)) //30
        row.append(.singleTile(tile: .lawn)) //31
        row.append(.singleTile(tile: .lawn)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //29
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //17
        row.append(.singleTile(tile: .metalFloor)) //18
        row.append(.singleTile(tile: .metalFloor)) //19
        row.append(.singleTile(tile: .lawn)) //20
        row.append(.singleTile(tile: .lawn)) //21
        row.append(.singleTile(tile: .lawn)) //22
        row.append(.singleTile(tile: .lawn)) //23
        row.append(.singleTile(tile: .lawn)) //24
        row.append(.singleTile(tile: .lawn)) //25
        row.append(.singleTile(tile: .lawn)) //26
        row.append(.singleTile(tile: .lawn)) //27
        row.append(.singleTile(tile: .lawn)) //28
        row.append(.singleTile(tile: .lawn)) //29
        row.append(.singleTile(tile: .lawn)) //30
        row.append(.singleTile(tile: .lawn)) //31
        row.append(.singleTile(tile: .lawn)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //30
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowLeft,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallEndTop)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .woodDoorCenterVertical,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //17
        row.append(.singleTile(tile: .metalFloor)) //18
        row.append(.singleTile(tile: .metalFloor)) //19
        row.append(.singleTile(tile: .lawn)) //20
        row.append(.singleTile(tile: .lawn)) //21
        row.append(.singleTile(tile: .lawn)) //22
        row.append(.singleTile(tile: .lawn)) //23
        row.append(.singleTile(tile: .lawn)) //24
        row.append(.singleTile(tile: .lawn)) //25
        row.append(.singleTile(tile: .lawn)) //26
        row.append(.singleTile(tile: .lawn)) //27
        row.append(.singleTile(tile: .lawn)) //28
        row.append(.singleTile(tile: .lawn)) //29
        row.append(.singleTile(tile: .lawn)) //30
        row.append(.singleTile(tile: .lawn)) //31
        row.append(.singleTile(tile: .lawn)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //31
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallEndTop)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.singleTile(tile: .wallEndTop)) //17
        row.append(.singleTile(tile: .metalFloor)) //18
        row.append(.singleTile(tile: .metalFloor)) //19
        row.append(.singleTile(tile: .lawn)) //20
        row.append(.singleTile(tile: .lawn)) //21
        row.append(.singleTile(tile: .lawn)) //22
        row.append(.singleTile(tile: .lawn)) //23
        row.append(.singleTile(tile: .lawn)) //24
        row.append(.singleTile(tile: .lawn)) //25
        row.append(.singleTile(tile: .lawn)) //26
        row.append(.singleTile(tile: .lawn)) //27
        row.append(.singleTile(tile: .lawn)) //28
        row.append(.singleTile(tile: .lawn)) //29
        row.append(.singleTile(tile: .lawn)) //30
        row.append(.singleTile(tile: .lawn)) //31
        row.append(.singleTile(tile: .lawn)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //32
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //3
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //4
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //5
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //6
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //7
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //8
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //9
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //10
        row.append(.singleTile(tile: .woodFloor, idNode: 24)) //11
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //12
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //13
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //14
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //15
        row.append(.singleTile(tile: .woodFloor, idNode: 23)) //16
        row.append(.singleTile(tile: .wallVerticalCoupleLines)) //17
        row.append(.singleTile(tile: .metalFloor)) //18
        row.append(.singleTile(tile: .metalFloor)) //19
        row.append(.singleTile(tile: .lawn)) //20
        row.append(.singleTile(tile: .lawn)) //21
        row.append(.singleTile(tile: .lawn)) //22
        row.append(.singleTile(tile: .lawn)) //23
        row.append(.singleTile(tile: .lawn)) //24
        row.append(.singleTile(tile: .lawn)) //25
        row.append(.singleTile(tile: .lawn)) //26
        row.append(.singleTile(tile: .lawn)) //27
        row.append(.singleTile(tile: .lawn)) //28
        row.append(.singleTile(tile: .lawn)) //29
        row.append(.singleTile(tile: .lawn)) //30
        row.append(.singleTile(tile: .lawn)) //31
        row.append(.singleTile(tile: .lawn)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //33
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .wallBottomLeftCorner)) //3
        row.append(.singleTile(tile: .wallEndRight)) //4
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //5
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //6
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //7
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //8
        row.append(.multiTile(mainTile: .woodFloor,
                              childTiles: [MultiTile(tileType: .windowBottom,
                                                     position: CGPoint(x: 0, y: 0),
                                                     rotation: nil,
                                                     childTiles: [])])) //9
        row.append(.singleTile(tile: .wallEndLeft)) //10
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //11
        row.append(.singleTile(tile: .wallBottomLineAndTwoCorners)) //12
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //13
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //14
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //15
        row.append(.singleTile(tile: .wallHorizantalCoupleLines)) //16
        row.append(.singleTile(tile: .wallBottomRightCorner)) //17
        row.append(.singleTile(tile: .metalFloor)) //18
        row.append(.singleTile(tile: .metalFloor)) //19
        row.append(.singleTile(tile: .lawn)) //20
        row.append(.singleTile(tile: .lawn)) //21
        row.append(.singleTile(tile: .lawn)) //22
        row.append(.singleTile(tile: .lawn)) //23
        row.append(.singleTile(tile: .lawn)) //24
        row.append(.singleTile(tile: .lawn)) //25
        row.append(.singleTile(tile: .lawn)) //26
        row.append(.singleTile(tile: .lawn)) //27
        row.append(.singleTile(tile: .lawn)) //28
        row.append(.singleTile(tile: .lawn)) //29
        row.append(.singleTile(tile: .lawn)) //30
        row.append(.singleTile(tile: .lawn)) //31
        row.append(.singleTile(tile: .lawn)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        //34
        row.append(.singleTile(tile: .lawn)) //0
        row.append(.singleTile(tile: .lawn)) //1
        row.append(.singleTile(tile: .lawn)) //2
        row.append(.singleTile(tile: .lawn)) //3
        row.append(.singleTile(tile: .lawn)) //4
        row.append(.singleTile(tile: .lawn)) //5
        row.append(.singleTile(tile: .lawn)) //6
        row.append(.singleTile(tile: .lawn)) //7
        row.append(.singleTile(tile: .lawn)) //8
        row.append(.singleTile(tile: .lawn)) //9
        row.append(.singleTile(tile: .lawn)) //10
        row.append(.singleTile(tile: .lawn)) //11
        row.append(.singleTile(tile: .lawn)) //12
        row.append(.singleTile(tile: .lawn)) //13
        row.append(.singleTile(tile: .lawn)) //14
        row.append(.singleTile(tile: .lawn)) //15
        row.append(.singleTile(tile: .lawn)) //16
        row.append(.singleTile(tile: .lawn)) //17
        row.append(.singleTile(tile: .metalFloor)) //18
        row.append(.singleTile(tile: .metalFloor)) //19
        row.append(.singleTile(tile: .lawn)) //20
        row.append(.singleTile(tile: .lawn)) //21
        row.append(.singleTile(tile: .lawn)) //22
        row.append(.singleTile(tile: .lawn)) //23
        row.append(.singleTile(tile: .lawn)) //24
        row.append(.singleTile(tile: .lawn)) //25
        row.append(.singleTile(tile: .lawn)) //26
        row.append(.singleTile(tile: .lawn)) //27
        row.append(.singleTile(tile: .lawn)) //28
        row.append(.singleTile(tile: .lawn)) //29
        row.append(.singleTile(tile: .lawn)) //30
        row.append(.singleTile(tile: .lawn)) //31
        row.append(.singleTile(tile: .lawn)) //32
        row.append(.singleTile(tile: .lawn)) //33
        row.append(.singleTile(tile: .lawn)) //34
        
        backgroundLayer.append(row)
        row.removeAll()
        
        let layers = LevelLayres(backgroundLayer: backgroundLayer)
        self.levelLayers = layers
    }
    
    func getLevel() -> LevelLayres {
        return levelLayers
    }
}

