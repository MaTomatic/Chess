//
//  Game.swift
//  Apple Pie
//
//  Created by Programming on 16/02/2019.
//  Copyright © 2019 Programming. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    static var listOfWords = [
        "Арбуз",
        "Банан",
        "Ватрушка",
        "Гриб",
        "Домик",
        "Ель",
        "Ёлка",
        ]
}
