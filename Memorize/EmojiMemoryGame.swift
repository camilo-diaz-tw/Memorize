//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Camilo Diaz on 21/8/2022.
//

import SwiftUI

// This is my viewModel
class EmojiMemoryGame: ObservableObject {
  typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚲", "🚂", "🚁", "🚜", "🚗", "🚠",
                  "🚌", "🚎", "🚐", "🚑", "🚒", "🚟",
                  "🚓", "🚕", "🚙", "🛻", "🚚", "🚋",
                  "🛰", "🚀", "🛸", "🛶", "⛵️", "🚢" ]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // @Published property wrapper means that any change to the below var will trigger a rerender
    @Published private var model = createMemoryGame()
        
    var cards: Array<Card> {
        model.cards
    }
  
  // MARK: - Intents
  
  func choose(_ card: Card) {
    objectWillChange.send() // any time the ui needs redrawing
    model.choose(card)
  }
}
