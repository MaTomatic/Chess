//
//  ViewController.swift
//  Apple Pie
//
//  Created by Programming on 02/02/2019.
//  Copyright © 2019 Programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topStackView: UIStackView!
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWord: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var currentGame: Game!
    
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        if size.width < size.height {
            topStackView.axis = .vertical
        } else{
            topStackView.axis = .horizontal
        }
    }
    
    func newRound() {
        let newWord = Game.listOfWords.removeFirst()
        
        currentGame = Game(
            word: newWord,
            incorrectMovesRemaining: incorrectMovesAllowed,
            guessedLetters: []
            
        )
        
        updateUI()
    
    }
    
    func updateUI() {
        let imageName = "Tree \(currentGame.incorrectMovesRemaining)"
        let image = UIImage(named: imageName)
        
        treeImageView.image = image
        
        scoreLabel.text = "Выигрыши: \(totalWins), проигрыши: \(totalLosses)"
    }
    
    @IBAction func buttonPressed (_ sender: UIButton) {
        sender.isEnabled = false
        
    }
}

