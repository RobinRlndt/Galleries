//
//  AppDataView.swift
//  Galleries
//
//  Created by Robin Roelandt on 11/12/2025.
//

import SwiftUI

struct AppDataView: View {
    let destination: Destination
    
    var body: some View {
        Group {
            switch destination {
            case let .gallery(gallery): GalleryDetailView(gallery: gallery)
            case let .artist(artist): ArtistView(artist: artist)
            case let .artwork(artwork): ArtworkView(artwork: artwork)
            }
        }
    }
}


