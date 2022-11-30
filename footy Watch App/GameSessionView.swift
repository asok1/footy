//
//  GameSessionView.swift
//  footy Watch App
//
//  Created by Alex Sokolov on 11/30/22.
//

import SwiftUI

struct GameSessionView: View {
    @State private var selection: Tab = .sessionControls
    
    enum Tab {
        case sessionControls, gameStats, healthMetrics
    }
    var body: some View {
        TabView() {
            Text("Session Controls").tag(Tab.sessionControls)
            GameStatsView().tag(Tab.gameStats)
            Text("Health Metrics").tag(Tab.healthMetrics)
        }
    }
}

struct GameSessionView_Previews: PreviewProvider {
    static var previews: some View {
        GameSessionView()
    }
}
