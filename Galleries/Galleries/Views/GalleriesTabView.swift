//
//  GalleriesTabView.swift
//  Galleries
//
//  Created by Robin Roelandt on 09/12/2025.
//

import SwiftUI

struct GalleriesTabView: View {
    @Environment(GalleryData.self) var galleryDataStore
    @Binding var selectedItem: Gallery?
    @State private var loading = true

    var body: some View {
        Group {
            if loading {
                ProgressView("Loading...")
            } else {
                List(galleryDataStore.galleries, id: \.self) { gallery in
                    let isSelected = selectedItem == gallery 

                    VStack {
                        Text(gallery.name)
                            .font(.title)
                            .foregroundColor(.accentColor)
                        Text(gallery.location)
                            .font(.caption)
                            .fontWeight(.bold)
                        Text(gallery.description)
                            .font(.caption)
                        Divider()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture { selectedItem = gallery }
                    .listRowBackground(
                        isSelected ? Color.accentColor.opacity(0.2) : Color.clear
                    )
                }
            }
        }
        .navigationTitle("Galleries")
        .task {
            await galleryDataStore.loadData()
            loading = false
        }
    }
}




