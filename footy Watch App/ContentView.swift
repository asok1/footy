//
//  ContentView.swift
//  footy Watch App
//
//  Created by Alex Sokolov on 11/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "figure.soccer")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Welcome to Footy!")
                NavigationLink("Start Game") { GameSessionView() }
            }
            .padding()
        }
    }
    
}

func startGame()  {
    let _ = print("hey!")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


