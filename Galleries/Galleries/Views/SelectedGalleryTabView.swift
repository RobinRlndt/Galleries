//
//  SelectedGalleryTabView.swift
//  Galleries
//
//  Created by Robin Roelandt on 09/12/2025.
//

import SwiftUI

struct SelectedGalleryTabView: View {
    let selectedItem: Gallery?
    @Environment(PathStore.self) var pathStore

    var body: some View {
        @Bindable var pathBinding = pathStore

        if let gallery = selectedItem {
            NavigationStack(path: $pathBinding.path) {
                GalleryDetailView(gallery: gallery)
                    .navigationTitle(gallery.name)
            }
            .navigationDestination(for: Destination.self) { destination in
                AppDataView(destination: destination)
            }
        } else {
            Text("No gallery selected")
        }
    }
}






