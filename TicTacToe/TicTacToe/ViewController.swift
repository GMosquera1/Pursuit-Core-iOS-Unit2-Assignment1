//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let player1 = Player(name: "Player 1", piece: .x)
    let player2 = Player(name: "Player 2", piece: .o)
    
    var playerToggle = true
    
    
    @IBOutlet weak var firstButton: GameButton!
    @IBOutlet weak var playerLabel: UILabel!
    @IBAction func AllButtons(_ sender: GameButton) {
        let currentPlayer = playerToggle ? player1: player2
        
        
        switch currentPlayer.piece {
        case .o:
            sender.setImage(UIImage(named:"android")!, for: .normal)
             playerLabel.text = "Player 1 is up"
        case .x:
            sender.setImage(UIImage(named:"swift")!, for: .normal)
            playerLabel.text = "Player 2 is up"
        case .empty:
            return
        }
       
        addPiece(sender: sender, piece: currentPlayer.piece)
          print(TicTacToeBrain.gameGrid)
        
        sender.isUserInteractionEnabled = false
        playerToggle = !playerToggle
        
    }
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Tic Tac Toe"
    
  }

    func addPiece(sender: GameButton, piece: Piece){
        TicTacToeBrain.gameGrid[sender.row][sender.col] = piece
        
    }

    @IBAction func restartGame(_ sender: UIButton) {
        sender.isUserInteractionEnabled = true
        playerToggle = !playerToggle    }
}

