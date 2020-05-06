//
//  FirstLevelGraph.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 06.05.2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation

protocol LevelGraph {
    
    func getGraph() -> Graph
}

final class FirstLevelGraph: LevelGraph {
    
    private let graph: Graph
    
    init() {
        var arrayVertex = [Vertex]()
        arrayVertex.append(Vertex(id: 0,
                                  graphId: 0,
                                  nearByVertex: [3, 4],
                                  exit: true,
                                  fire: false))
        arrayVertex.append(Vertex(id: 1,
                                  graphId: 0,
                                  nearByVertex: [2, 4],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 2,
                                  graphId: 0,
                                  nearByVertex: [1, 6, 10],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 3,
                                  graphId: 0,
                                  nearByVertex: [0, 7],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 4,
                                  graphId: 0,
                                  nearByVertex: [0, 1, 5, 8],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 5,
                                  graphId: 0,
                                  nearByVertex: [4, 6],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 6,
                                  graphId: 0,
                                  nearByVertex: [2, 5, 9],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 7,
                                  graphId: 0,
                                  nearByVertex: [3, 8, 11],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 8,
                                  graphId: 0,
                                  nearByVertex: [4, 7, 9, 12],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 9,
                                  graphId: 0,
                                  nearByVertex: [6, 8, 10, 13],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 10,
                                  graphId: 0,
                                  nearByVertex: [2, 9, 14],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 11,
                                  graphId: 0,
                                  nearByVertex: [7, 12],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 12,
                                  graphId: 0,
                                  nearByVertex: [8, 11, 13],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 13,
                                  graphId: 0,
                                  nearByVertex: [9, 12, 14],
                                  exit: false,
                                  fire: false))
        arrayVertex.append(Vertex(id: 14,
                                  graphId: 0,
                                  nearByVertex: [10, 13],
                                  exit: false,
                                  fire: false))
        self.graph = Graph(vertexes: arrayVertex)
    }
    
    func getGraph() -> Graph {
        return graph
    }
    
}
