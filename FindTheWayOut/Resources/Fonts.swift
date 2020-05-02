//
//  Fonts.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 02/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

enum StandartFonts {
    case AmericanTypewriterBold
    
    var description: String {
        switch self {
        case .AmericanTypewriterBold:
            return "AmericanTypewriter-Bold"
        }
    }
}
