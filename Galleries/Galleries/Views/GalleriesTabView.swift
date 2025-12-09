//
//  GalleriesTabView.swift
//  Galleries
//
//  Created by Robin Roelandt on 09/12/2025.
//

import SwiftUI

struct GalleriesTabView: View {
    @Environment(GalleryData.self) var galleryDataStore
    @State var selectedItem: String?
    @State var loading = true
    
    var body: some View {
                if loading {
                    ProgressView("Loading...")
                        .navigationTitle("Galleries")
                } else {
                    List(galleryDataStore.galleries, id: \.self, selection: $selectedItem) { gallery in
                        VStack {
                            Text("\(gallery.name)")
                                .font(.title)
                                .foregroundColor(Color.accentColor)
                            Text("\(gallery.location)")
                                .font(.caption)
                                .fontWeight(.bold)
                            Text("\(gallery.description)")
                                .font(.caption)
                            
                            Divider()
                        }
                }
            .task {
                await galleryDataStore.loadData()
                loading = false
            }
        }
    }
}

