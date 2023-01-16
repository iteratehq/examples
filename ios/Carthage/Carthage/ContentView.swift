//
//  ContentView.swift
//  Carthage
//
//  Created by Mike Singleton on 1/16/23.
//

import SwiftUI
import Iterate

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Show survey") {
                Iterate.shared.preview(surveyId: "5efa0121a9fffa0001c70b8d")
                Iterate.shared.sendEvent(name: "show-survey-button-tapped")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
