//
//  Arts.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct Art : Identifiable {
let id = UUID()

var image : String
var title : String
var detail : String
    
var type : Types
var condition : Conditions

var date : Date
var auteurName : String
var auteurUserName : String
var adresse : String
var borough : String
var city : String
var latitude : Double
var longitude : Double

}

enum Types : String , CaseIterable {
    case harlftone = "Harlftone"
    case invaders = "Invaders"
    case mosaiques = "Mosaïques"
    case mural = "Mural"
    case stencil = "Stencil"
    case calligraphie = "Calligraphie"
}

enum Conditions : String , CaseIterable {
case bad = "Mauvaise"
case good = "Bonne"
case excellent = "Excellent"
}
