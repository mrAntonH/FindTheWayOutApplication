//
//  CameraHelper.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 09/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit
import SpriteKit

protocol CameraInterface {
    
    //MARK: Getters:
    func getCurrentLocation() -> CGPoint
    
    func getPreviousLocation() -> CGPoint
    
    func getPreviousScale() -> CGFloat
    
    //MARK: Setters:
    
    func setCurrentLocation(point: CGPoint)
    
    func setPreviousLocation(point: CGPoint)
    
    func setPreviousScale(value: CGFloat)
}

final class CameraHelper: CameraInterface {
    
    private var currentLocation: CGPoint
    private var previousLocation: CGPoint
    private var previousScale: CGFloat
    
    init(currentLocation: CGPoint = CGPoint(x: 0, y: 0),
         previousLocation: CGPoint = CGPoint(x: 0, y: 0),
         previousScale: CGFloat = CGFloat()) {
        self.currentLocation = currentLocation
        self.previousLocation = previousLocation
        self.previousScale = previousScale
    }
    
    func getCurrentLocation() -> CGPoint {
        return currentLocation
    }
    
    func getPreviousLocation() -> CGPoint {
        return previousLocation
    }
    
    func getPreviousScale() -> CGFloat {
        return previousScale
    }
    
    func setCurrentLocation(point: CGPoint) {
        currentLocation = point
    }
    
    func setPreviousLocation(point: CGPoint) {
        previousLocation = point
    }
    
    func setPreviousScale(value: CGFloat) {
        previousScale = value
    }
    

}
