//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Camilo Diaz on 10/8/2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
  let game = EmojiMemoryGame()
  
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
