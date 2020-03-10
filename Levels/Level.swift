//
//  Level.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 10/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

enum Level {
    case level1
    
    var description: URL? {
        switch self {
        case .level1:
            return R.file.level1Txt()
        }
    }
}
