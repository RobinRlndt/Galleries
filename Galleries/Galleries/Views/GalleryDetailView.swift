//
//  GalleryDetailView.swift
//  Galleries
//
//  Created by Robin Roelandt on 11/12/2025.
//

import SwiftUI

struct GalleryDetailView: View {
    var gallery: Gallery
    
    var body: some View {
        
        ScrollView {
            VStack {
                Text(gallery.name)
                    .font(.title)
                    .foregroundColor(.accentColor)
                Divider()
                Text(gallery.location)
                    .font(.caption)
                    .fontWeight(.bold)
                Text(gallery.description)
                    .font(.caption)
                Divider()
                
                if !gallery.artists.isEmpty {
                    Text("List of artists")
                        .font(.headline)
                        .foregroundStyle(Color.accentColor)
                    
                    ForEach(gallery.artists, id: \.self ) { artist in
                        NavigationLink(value: Destination.artist(artist)) {
                            VStack(alignment: .leading) {
                                Text("\(artist.name)")
                                    .foregroundStyle(Color.accentColor)
                                Text("\(artist.nationality)")
                                Divider()
                            }
                        }
                        
                    }
                }
                
                
            }
        }
        
    }
}


