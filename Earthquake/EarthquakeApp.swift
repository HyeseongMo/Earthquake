//
//  EarthquakeApp.swift
//  Earthquake
//
//  Created by Paul Mo on 2023/12/01.
//

import SwiftUI

@main
struct EarthquakeApp: App {
    @StateObject var quakesProvider = QuakesProvider()
    
    var body: some Scene {
        WindowGroup {
            Quakes().environmentObject(quakesProvider)        }
    }
}
