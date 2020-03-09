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
    
    let spriteSize = CGSize(width: 50, height: 50)
    
    let cameraHelper: CameraHelper
    
    init(cameraHelper: CameraHelper) {
        self.cameraHelper = cameraHelper
    }
    
}
