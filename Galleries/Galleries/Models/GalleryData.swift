//
//  GalleryData.swift
//  Galleries
//
//  Created by Robin Roelandt on 09/12/2025.
//

import Foundation

@Observable
class GalleryData {

    var galleries: [Gallery] = []
    
    func loadData() async {
        // TODO: Implement async loading
        do {
            print("⏳ Simulating 2-second load delay...")
            try await Task.sleep(for: .seconds(2)) // Simulate long load
            //load galleries here
            let dataWrapper: Galleries = load("galleries.json")
            galleries = dataWrapper.galleries
            print("✅ Data loaded successfully.")
        } catch {
            print("❌ Failed to load galleries:", error)
            galleries = []
        }
    }
}
