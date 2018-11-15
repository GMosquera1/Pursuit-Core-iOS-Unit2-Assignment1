//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

class TicTacToeBrain {
    static var gameGrid: [[Piece]] = Array(repeating: Array(repeating: Piece.empty, count: 3), count: 3)
}

struct Player {
    let name: String
    let piece: Piece
    
}

enum Piece: String {
    case x, o
    case empty
}
