//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Ralph Matta on 18/03/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var locationHandler = LocationHandler()
    
    var body: some View {
        VStack {
            Text(locationHandler.lastKnownLocation)
                .padding()
            Spacer()
            Button("Find Music", action: {
                locationHandler.requestLocation()
            })
        }
        .onAppear(perform: {
            locationHandler.requestAuthorisation()
        })
    }
}

#Preview {
    ContentView()
}
