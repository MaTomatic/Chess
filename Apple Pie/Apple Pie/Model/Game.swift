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
        "Маск",
        "Брин",
        "Пейдж",
        "Шмидт",
        "Безос",
        "Волож",
        "Сегалович",
        "Касперский",
        "Гейтс",
        "Джобс",
        "Возняк",
        "Быструев"
        ]
    
    var correctWord: String {
        var result = ""
        
        for letter in word.lowercased() {
            if guessedLetters.contains(letter) {
                result += "\(letter)"
            } else {
                result += "_"
            }
        }
        
        return result
    }
    
    mutating func guess(letter: String) {
        let character = Character(letter.lowercased())
        
        guessedLetters += [character]
        
        if !word.lowercased().contains(character) {
            incorrectMovesRemaining -= 1
        }
    }
    
}
