//
//  GameConfiguration.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 09/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit

protocol GameConfigurationInterface {
    
    var cameraHelper: CameraHelper { get }
    
}

final class GameConfiguration: GameConfigurationInterface {
    
    let spriteSize = CGSize(width: 64, height: 64)
    
    let spriteLenght: Int = 64
    
    let cameraHelper: CameraHelper
    
    init(cameraHelper: CameraHelper) {
        self.cameraHelper = cameraHelper
    }
    
    
    
}
