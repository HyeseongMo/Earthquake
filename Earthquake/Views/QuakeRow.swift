//
//  QuakeRow.swift
//  Earthquake
//
//  Created by Paul Mo on 2023/12/04.
//

import SwiftUI

struct QuakeRow: View {
    var quake: Quake
    
    var body: some View {
        HStack {
            QuakeMagnitude(quake: quake)
            VStack(alignment: .leading) {
                Text(quake.place)
                    .font(.title3)
                Text("\(quake.time.formatted(.relative(presentation: .named)))")
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical, 8)
    }
}

struct QuakeRow_Previews: PreviewProvider {
    static var previewQuake = Quake(magnitude: 1.0,
                                    place: "Shakey Acres",
                                    time: Date(timeIntervalSinceNow: -1000),
                                    code: "nc73649170",
                                    detail: URL(string: "https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/nc73649170.geojson")!)
    
    static var previews: some View {
        QuakeRow(quake: previewQuake)
            .previewLayout(.sizeThatFits)
    }
}

