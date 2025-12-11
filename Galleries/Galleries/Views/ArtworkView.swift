//
//  ArtworkView.swift
//  Galleries
//
//  Created by Robin Roelandt on 11/12/2025.
//

import SwiftUI

struct ArtworkView: View {
    
    var artwork: Artwork
    
    var body: some View {
        ScrollView {
            VStack {
                Text("\(artwork.title)")
                    .font(.title)
                    .foregroundColor(.accentColor)
                Divider()
                Text(artwork.medium)
                    .fontWeight(.bold)
                Text(artwork.dimensions)
                    .fontWeight(.bold)
                Text(artwork.description)
                    .font(.caption)
                Divider()
            }
        }
    }
}


