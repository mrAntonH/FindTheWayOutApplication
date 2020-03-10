//
//  TileType.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

enum TileType {
    
    //Floors
    case woodFloor
    case tileFloor
    
    //Walls
    case wallTopLeftCorner
    case wallTopRightCorner
    case wallBottomLeftCorner
    case wallBottomRightCorner
    
    case wallVerticalCoupleLines
    case wallHorizantalCoupleLines
    
    case wallTopLineAndTwoCorners
    case wallBottomLineAndTwoCorners
    case wallLeftLineAndTwoCorners
    case wallRightLineAndTwoCorners
    
    case wallEndRight
    case wallEndBottom
    case wallEndTop
    case wallEndLeft
    
    case wallSimpleTopLeftCorner
    case wallSimpleTopRightCorner
    case wallSimpleBottomLeftCorner
    case wallSimpleRightButtomCorner
    
    case wallSingleLineLeft
    case wallSingleLineRight
    case wallSingleLineTop
    case wallSingleLineBottom
    
    
}
