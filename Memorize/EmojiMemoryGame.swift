//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by user244584 on 10/6/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    var title: String
    var theme: Theme
    let numberOfPairs: Int
    var emojis: [String] //["👻", "🎃", "🕷️", "😈", "🕸️", "💀", "🧙", "🙀", "👹", "😱", "☠️", "🍭"]
    @Published private var game: MemoryGame<String>!
    
    init(title: String, theme: Theme, emojis: [String], numberOfPairs: Int) {
        self.title = title
        self.theme = theme
        self.emojis = emojis
        self.numberOfPairs = numberOfPairs
        self.game = createMemoryGame()
    }
    
    private func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: self.numberOfPairs, title: self.title, theme: self.theme) { pairIndex in
            if emojis.indices.contains(pairIndex){
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return game.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        game.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        game.choose(card)
    }
    
    func newGame() {
        game = createMemoryGame()
        game.shuffle()
    }
}
