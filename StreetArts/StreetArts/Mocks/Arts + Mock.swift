//
//  Arts + Mock.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

extension Art {

    static let mock = Art(
        image: "laJoconde",
        title: "La Joconde de Marseille",
        detail:
            "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de Marseille a donné carte blanche à l’artiste Kan / dmv pour la réalisation de l’œuvre « La Joconde de Marseille ». Produite et coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Monna Lisa au sein de la cité phocéenne.",
        type: .mural,
        condition: .good,
        date: Date(),
        auteurName: "Kan",
        auteurUserName: "dmv",
        adresse: "Palais de la Bourse",
        borough: "13001",
        city: "Marseille",
        latitude: 43.2965,
        longitude: 5.3698
    )

    static let mocks = [
        Art(
            image: "",
            title: "Liberté Égalité Fraternité",
            detail: "",
            type: .calligraphie,
            condition: .excellent,
            date: Date(),
            auteurName: "",
            auteurUserName: "",
            adresse: "",
            borough: "",
            city: "Paris",
            latitude: 43.2965,
            longitude: 5.3698
        ),
        Art(
            image: "laJoconde",
            title: "La Joconde de Marseille",
            detail:
                "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de Marseille a donné carte blanche à l’artiste Kan / dmv pour la réalisation de l’œuvre « La Joconde de Marseille ». Produite et coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Monna Lisa au sein de la cité phocéenne.",
            type: .mural,
            condition: .good,
            date: Date(),
            auteurName: "Kan",
            auteurUserName: "dmv",
            adresse: "Palais de la Bourse",
            borough: "13001",
            city: "Marseille",
            latitude: 43.2965,
            longitude: 5.3698
        ),
        Art(
            image: "",
            title: "La maison de Cécile",
            detail: "",
            type: .invaders,
            condition: .bad,
            date: Date(),
            auteurName: "",
            auteurUserName: "",
            adresse: "",
            borough: "",
            city: "Paris",
            latitude: 43.2965,
            longitude: 5.3698
        ),
        Art(
            image: "",
            title: "Chloé",
            detail: "",
            type: .mosaiques,
            condition: .good,
            date: Date(),
            auteurName: "",
            auteurUserName: "",
            adresse: "",
            borough: "",
            city: "Marseille",
            latitude: 43.2965,
            longitude: 5.3698
        ),
        Art(
            image: "",
            title: "PA_278",
            detail: "",
            type: .stencil,
            condition: .bad,
            date: Date(),
            auteurName: "",
            auteurUserName: "",
            adresse: "",
            borough: "",
            city: "Paris",
            latitude: 43.2965,
            longitude: 5.3698
        ),
        Art(
            image: "",
            title: "Chuuuut...",
            detail: "",
            type: .stencil,
            condition: .excellent,
            date: Date(),
            auteurName: "",
            auteurUserName: "",
            adresse: "",
            borough: "",
            city: "Paris",
            latitude: 43.2965,
            longitude: 5.3698
        ),
        Art(
            image: "",
            title: "Le Tigre et la Cigale",
            detail: "",
            type: .stencil,
            condition: .good,
            date: Date(),
            auteurName: "",
            auteurUserName: "",
            adresse: "",
            borough: "",
            city: "Marseille",
            latitude: 43.2965,
            longitude: 5.3698
        ),
    ]
}
