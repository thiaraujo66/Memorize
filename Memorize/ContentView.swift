//
//  ContentView.swift
//  Memorize
//
//  Created by user244584 on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    themaAdd
                    Spacer()
                    Text("Memorize")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    themaEdit
                }
                
                
            }
            .padding(.horizontal)
            List {
                NavigationLink(destination: MemoryGameView(EMemoryGame: EmojiMemoryGame(title:"Halloween", theme: .orange, emojis: ["👻", "🎃", "🕷️", "😈", "🕸️", "💀", "🧙", "🙀", "👹", "😱", "☠️", "🍭"], numberOfPairs: 12))) {
                    VStack {
                        HStack{
                            Text("Halloween")
                                .font(.system(size: 25))
                                .foregroundColor(.orange)
                                .bold()
                            Spacer()
                        }
                        Text("All of 👻🎃🕷️😈🕸️💀🧙🙀👹😱☠️🍭")
                            .font(.system(size: 15))
                    }
                }
                NavigationLink(destination: MemoryGameView(EMemoryGame: EmojiMemoryGame(title: "Vehicles", theme: .red, emojis: ["✈️", "🚗", "🚌", "🏎️", "🚓", "🚑", "🚒", "🚜", "🚲", "🚁", "🚤", "🚄"], numberOfPairs: 12))) {
                    VStack {
                        HStack{
                            Text("Vehicles")
                                .font(.system(size: 25))
                                .foregroundColor(.red)
                                .bold()
                            Spacer()
                        }
                        Text("All of ✈️🚗🚌🏎️🚓🚑🚒🚜🚲🚁🚤🚄")
                            .font(.system(size: 15))
                    }
                }
            }
            
        }
    }
    
    var themaAdd: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "plus")
        })
        .font(.system(size: 25))
    }
    
    var themaEdit: some View {
        Button(action: {
            
        }, label: {
            Text("Edit")
        })
        .font(.system(size: 20))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
