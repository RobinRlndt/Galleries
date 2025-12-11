//
//  GalleriesApp.swift
//  Galleries
//
//  Created by Robin Roelandt on 09/12/2025.
//

import SwiftUI

@main
struct GalleriesApp: App {
    @State private var galleryDataStore = GalleryData()
    @State private var pathStore = PathStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(galleryDataStore)
                .environment(pathStore)
        }
    }
}
