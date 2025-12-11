//
//  AppData.swift
//  Galleries
//
//  Created by Robin Roelandt on 11/12/2025.
//

import Foundation

enum Destination: Hashable {
    case gallery(Gallery)
    case artist(Artist)
    case artwork(Artwork)
}

@Observable
class PathStore {
    var path = [Destination]()
    
    func append(_ destination: Destination) {
        path.append(destination)
    }
    
    func removeLast() {
        path.removeLast()
    }
}
