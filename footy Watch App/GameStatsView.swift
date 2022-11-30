//
//  GameStatsView.swift
//  footy Watch App
//
//  Created by Alex Sokolov on 11/30/22.
//

import SwiftUI

struct GameStatsView: View {
    @State private var goals = 0
    @State private var assists = 0
    
    var body: some View {
//        if HKHealthStore.isHealthDataAvailable() {
//            print("HealthKit available")
//        }
        VStack{
            
            // GOALS
            HStack(alignment: .center, spacing: 10) {
                Button(action: {
                    goals -= 1
                }) {
                    Image(systemName: "minus")
                }
                Image(systemName: "soccerball.inverse")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.gray)
                    .overlay(Text(goals.description).foregroundColor(.red).font(.system(size: 50)))
                Button(action: {
                    goals += 1
                }) {
                    Image(systemName: "plus")
                }
            }
            
            // ASSISTS
            HStack(alignment: .center, spacing: 10) {
                Button(action: {
                    assists -= 1
                }) {
                    Image(systemName: "minus")
                }
                VStack(spacing: -25) {
                    Text(assists.description).foregroundColor(.red)
                        .font(.system(size: 50))
                    
                    Image("assist-icon")
                        .resizable()
                        .frame(width: 50, height: 35)
                }
                Button(action: {
                    assists += 1
                }) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct GameStatsView_Previews: PreviewProvider {
    static var previews: some View {
        GameStatsView()
    }
}
