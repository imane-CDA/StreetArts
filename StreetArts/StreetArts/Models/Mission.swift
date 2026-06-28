//
//  Mission.swift
//  StreetArts
//
//  Created by Apprenant131 on 27/06/2026.
//

import Foundation

struct Mission: Identifiable {
    let id = UUID()

    var arts: [Art]
    var discoveredArts: Set<Art> = []

    var isCompleted: Bool {
        !arts.isEmpty && discoveredArts.count == arts.count
    }

    // -------------------------------------------------- //
    
    static func generate(from arts: [Art]) -> [Art] {

        let artRandom = arts.shuffled()

        var filteredArt: [Art] = []
        var filteredAuthorName: Set<String> = []
        var filteredType: Set<String> = []

        for art in artRandom {

            if filteredArt.count == 5 { break }

            if filteredAuthorName.contains(art.author.authorName) { continue }

            if filteredType.contains(art.type.rawValue) { continue }

            filteredArt.append(art)
            filteredAuthorName.insert(art.author.authorName)
            filteredType.insert(art.type.rawValue)
        }

        return filteredArt.count >= 3
            ? filteredArt
            : Array(arts.prefix(3))
    }

    // -------------------------------------------------- //
    
    // mutating : cette fonction a le droit de modifier la struct
    mutating func toggleDiscovery(art: Art) {

        if discoveredArts.contains(art) {
            discoveredArts.remove(art)
        } else {
            discoveredArts.insert(art)
        }
    }

}
