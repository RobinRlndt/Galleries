//
//  ContentView.swift
//  Galleries
//
//  Created by Robin Roelandt on 09/12/2025.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem: Gallery?
    
    var body: some View {
        TabView {
            Tab {
                GalleriesTabView(selectedItem: $selectedItem)
            } label: {
                Text("Galleries")
            }
            Tab {
                SelectedGalleryTabView(selectedItem: selectedItem)
            } label: {
                if let item = selectedItem {
                    Text("\(item.name)")
                } else {
                    Text("No Gallery")
                }
                
            }
            

        }
        .padding()
    }
}

