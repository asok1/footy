//
//  ContentView.swift
//  footy
//
//  Created by Alex Sokolov on 11/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("player-icon-black")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Welcome to Footy!")
            Button("Start Game", action: startGame)
        }
        .padding()
    }
}

func startGame()  {
    let _ = print("hi!")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
