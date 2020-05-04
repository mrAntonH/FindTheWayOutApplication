//
//  WayData.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 04/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

struct Way: Codable {
    var way: [Int]
    var exit: Bool
    var blocked: Bool
}
