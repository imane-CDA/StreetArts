//
//  Author + Mocks.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import Foundation

extension Author {

    static let mock = Author(
        image: nil,
        name: "KAN DMV",
        age: 49,
        origin: "France",
        style: .pointillisme,
        siteWeb: "https://kandmv.com/"
    )

    static let mocks = [
        Author(
            image: nil,
            name: "KAN DMV",
            age: 49,
            origin: "France",
            style: .pointillisme,
            siteWeb: "https://kandmv.com/"
        ),
        Author(
            image: "kitsuneJolene",
            name: "Kitsune Jolene",
            age: 34,
            origin: "Belgique",
            style: .mural,
            siteWeb: "https://www.kitsunejolene.com/"
        ),
        Author(
            image: "aero",
            name: "Aero",
            age: nil,
            origin: "France",
            style: .aerographe,
            siteWeb: "https://www.instagram.com/creaero/?hl=fr"
        ),
        Author(
            image: "sethGlobepainter",
            name: "Seth Globepainter",
            age: 54,
            origin: "France",
            style: .globePainter,
            siteWeb: "https://seth.fr/"
        ),
        Author(
            image: "jdl",
            name: "JDL",
            age: 54,
            origin: "France",
            style: .mural,
            siteWeb: "https://seth.fr/"
        ),
        Author(
            image: "shepardFairey",
            name: "Shepard Fairey",
            age: 56,
            origin: "USA",
            style: .mural,
            siteWeb: "https://jdlstreetart.com/"
        ),
    ]

}
