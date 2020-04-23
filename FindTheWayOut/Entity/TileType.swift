//
//  TileType.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit

enum TileType {
    
    //Floors
    case woodFloor
    case tileFloor
    
    case lawn
    case lawnGroundFirst
    case lawnGroundSecond
    case lawnGroundThird
    case lawnGroundFourth
    
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
    
    //Furniture
    case largeTableLeftTile
    case largeTableCenterTile
    case largeTableRightTile
    
    case smallTable
    
    case sofaLeftTile
    case sofaCenterTile
    case sofaRightTile
    
    case armChair
    
    case chair
    
    //Windows and Doors
    case windowTop
    case windowBottom
    case windowRight
    case windowLeft
    
    case woodDoorTop
    case woodDoorBottom
    case woodDoorLeft
    case woodDoorRight
    case woodDoorCenterHorizontaly
    case woodDoorCenterVertical
    
    case none
    
    func getImageName() -> String {
        switch self {
        case .woodFloor:
            return "Wood Floor"
        case .tileFloor:
            return R.image.tileFloor1.name
        case .lawn:
            return "Lawn"
        case .lawnGroundFirst:
            return R.image.lawnGroundFirst.name
        case .lawnGroundSecond:
            return R.image.lawnGroundSecond.name
        case .lawnGroundThird:
            return R.image.lawnGroundThird.name
        case .lawnGroundFourth:
            return R.image.lawnGroundFourth.name
        case .wallTopLeftCorner:
            return R.image.wallTopLeftCorner.name
        case .wallTopRightCorner:
            return R.image.wallTopRightCorner.name
        case .wallBottomLeftCorner:
            return R.image.wallBottomLeftCorner.name
        case .wallBottomRightCorner:
            return R.image.wallBottomRightCorner.name
        case .wallVerticalCoupleLines:
            return R.image.wallVerticalCoupleLines.name
        case .wallHorizantalCoupleLines:
            return R.image.wallHorizantalCoupleLines.name
        case .wallTopLineAndTwoCorners:
            return R.image.wallTopLineAndTwoCorners.name
        case .wallBottomLineAndTwoCorners:
            return R.image.wallBottomLineAndTwoCorners.name
        case .wallLeftLineAndTwoCorners:
            return R.image.wallLeftLineAndTwoCorners.name
        case .wallRightLineAndTwoCorners:
            return R.image.wallRightLineAndTwoCorners.name
        case .wallEndRight:
            return R.image.wallEndRight.name
        case .wallEndBottom:
            return R.image.wallEndBottom.name
        case .wallEndTop:
            return R.image.wallEndTop.name
        case .wallEndLeft:
            return R.image.wallEndLeft.name
        case .wallSimpleTopLeftCorner:
            return R.image.wallSimpleTopLeftCorner.name
        case .wallSimpleTopRightCorner:
            return R.image.wallSimpleTopRightCorner.name
        case .wallSimpleBottomLeftCorner:
            return R.image.wallSimpleBottomLeftCorner.name
        case .wallSimpleRightButtomCorner:
            return R.image.wallSimpleRightButtomCorner.name
        case .wallSingleLineLeft:
            return R.image.wallSingleLineLeft.name
        case .wallSingleLineRight:
            return R.image.wallSingleLineRight.name
        case .wallSingleLineTop:
            return R.image.wallSingleLineTop.name
        case .wallSingleLineBottom:
            return R.image.wallSingleLineBottom.name
        case .largeTableLeftTile:
            return R.image.largeTableLeftTile.name
        case .largeTableCenterTile:
            return R.image.largeTableCenterTile.name
        case .largeTableRightTile:
            return R.image.largeTableRightTile.name
        case .smallTable:
            return R.image.smallTable.name
        case .sofaLeftTile:
            return R.image.sofaLeftTile.name
        case .sofaCenterTile:
            return R.image.sofaCenterTile.name
        case .sofaRightTile:
            return R.image.sofaRightTile.name
        case .armChair:
            return R.image.armChair.name
        case .chair:
            return R.image.chair.name
        case .windowTop:
            return R.image.windowTop.name
        case .windowBottom:
            return R.image.windowBottom.name
        case .windowRight:
            return R.image.windowRight.name
        case .windowLeft:
            return R.image.windowLeft.name
        case .woodDoorTop:
            return R.image.woodDoorTop.name
        case .woodDoorBottom:
            return R.image.woodDoorBottom.name
        case .woodDoorLeft:
            return R.image.woodDoorLeft.name
        case .woodDoorRight:
            return R.image.woodDoorRight.name
        case .woodDoorCenterHorizontaly:
            return R.image.woodDoorCenterHorizontaly.name
        case .woodDoorCenterVertical:
            return R.image.woodDoorCenterVertical.name
        case .none:
            return ""
        }
    }
    
}
