//
//  MemorizeApp.swift
//  Memorize
//
//  Created by user244584 on 10/2/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            MemoryGameView(EMemoryGame: game)
        }
    }
}
