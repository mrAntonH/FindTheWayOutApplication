//
//  ServerVertexes.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 04/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

struct Graph: Codable {
    
    var vertexes: [Vertex] = []

}

struct Vertex: Codable {
    
    var id: Int
    var graphId: Int
    var nearByVertex: [Int]
    var exit: Bool
    var fire: Bool
    
}
