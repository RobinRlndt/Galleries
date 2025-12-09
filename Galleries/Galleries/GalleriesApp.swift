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

    var body: some Scene {
        WindowGroup {
            ContentView().environment(galleryDataStore)
        }
    }
}
