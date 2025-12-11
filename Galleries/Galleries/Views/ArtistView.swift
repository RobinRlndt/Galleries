//
//  ArtistView.swift
//  Galleries
//
//  Created by Robin Roelandt on 11/12/2025.
//

import SwiftUI

struct ArtistView: View {
    var artist: Artist
    
    var body: some View {
        ScrollView {
            VStack {
                Text("\(artist.name)")
                    .font(.title)
                    .foregroundColor(.accentColor)
                Divider()
                Text(artist.nationality)
                    .fontWeight(.bold)
                Text(artist.style)
                    .fontWeight(.bold)
                Text(artist.description)
                    .font(.caption)
                Divider()
            }
        }
    }
}

