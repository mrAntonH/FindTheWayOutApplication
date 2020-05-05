//
//  LevelSectionType.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 05.05.2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation
import RxDataSources

enum LevelSectionType {
    case start(Int)
    case short(Int)
    case final(Int)
}

extension LevelSectionType: IdentifiableType {
    var identity: Int {
        switch self {
        case .start(let vertexValue):
            return vertexValue
        case .short(let vertexValue):
            return vertexValue
        case .final(let vertexValue):
            return vertexValue
        }
    }
}

extension LevelSectionType: Equatable {
    static func == (lhs: LevelSectionType,
                    rhs: LevelSectionType) -> Bool {
        return lhs.identity == rhs.identity
    }
}
