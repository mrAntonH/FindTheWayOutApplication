//
//  CustomError.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 08/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

enum CustomAppError: Error {
    case GameSceneCreate
    case loadLevel
    case noData
}

extension CustomAppError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .GameSceneCreate:
            return R.string.localizable.errorCreateScene()
        case .loadLevel:
            return R.string.localizable.errorLoadLevel()
        case .noData:
            return "noData"
        }
    }
}
