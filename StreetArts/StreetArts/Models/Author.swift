//
//  Author.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import Foundation

struct Author: Identifiable, Hashable {
    let id = UUID()

    let image: String?
    let authorName: String
    let authorUserName: String?
    let age: Int?
    let origin: String
    let style: Types
    let siteWeb: String
}
