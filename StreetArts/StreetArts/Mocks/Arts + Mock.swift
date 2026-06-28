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
            "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de Marseille a donné « carte blanche »  à l’artiste Kan / dmv pour la réalisation de l’œuvre « La Joconde de Marseille ». Produite et  coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Monna Lisa au sein de la cité phocéenne.",
        type: .mural,
        condition: .good,
        date: Date(),
        author: Author.mock,
        adresse: "Palais de la Bourse",
        borough: "13001",
        city: "Marseille",
        latitude: 43.2965,
        longitude: 5.3698
    )

    static let mocks = [
        Art(
            image: "liberteEgaliteFraternite",
            title: "Liberté Égalité Fraternité",
            detail:
                "Une fresque typographique monumentale réalisée au cœur de Paris et inspirée des valeurs républicaines françaises. Les mots Liberté, Égalité et Fraternité se déploient sur plusieurs mètres de façade dans un style calligraphique contemporain. L’œuvre dialogue avec l’architecture environnante et invite les passants à réfléchir au vivre-ensemble tout en redonnant de la couleur et du sens à l’espace urbain.",
            type: .calligraphie,
            condition: .excellent,
            date: Date(),
            author: Author.mock,
            adresse: "Place de la République",
            borough: "75011",
            city: "Paris",
            latitude: 48.8674,
            longitude: 2.3630
        ),
        Art(
            image: "laJoconde",
            title: "La Joconde de Marseille",
            detail:
                "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de Marseille a donné carte blanche à l’artiste Kan / dmv pour la réalisation de l’œuvre « La Joconde de Marseille ». Produite et coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Monna Lisa au sein de la cité phocéenne.",
            type: .mural,
            condition: .good,
            date: Date(),
            author: Author.mock,
            adresse: "Palais de la Bourse",
            borough: "13001",
            city: "Marseille",
            latitude: 43.2965,
            longitude: 5.3698
        ),
        Art(
            image: "laMaisonDeCecile",
            title: "La Maison de Cécile",
            detail:
                "Cette mosaïque discrètement installée sur la façade d’un immeuble ancien s’inspire de l’esthétique du jeu vidéo et du pixel art. Composée de centaines de carreaux colorés, elle attire l’attention des promeneurs les plus observateurs. Au fil des années, l’œuvre est devenue un repère apprécié des habitants du quartier, participant à la transformation artistique et culturelle de l’espace public.",
            type: .invaders,
            condition: .bad,
            date: Date(),
            author: Author.mock,
            adresse: "Rue Oberkampf",
            borough: "75011",
            city: "Paris",
            latitude: 48.8642,
            longitude: 2.3791
        ),

        Art(
            image: "chloe",
            title: "Chloé",
            detail:
                "Réalisé en mosaïque colorée, ce portrait féminin apporte une présence lumineuse et poétique à son environnement urbain. Les nuances de couleurs et le travail minutieux des matériaux permettent de faire émerger un visage expressif qui semble observer les passants. L’œuvre participe à l’identité artistique du quartier et témoigne de la diversité des formes d’expression du street art contemporain.",
            type: .mosaiques,
            condition: .good,
            date: Date(),
            author: Author.mock,
            adresse: "Cours Julien",
            borough: "13006",
            city: "Marseille",
            latitude: 43.2925,
            longitude: 5.3850
        ),

        Art(
            image: "artPa278",
            title: "PA_278",
            detail:
                "Ce pochoir représente une silhouette énigmatique dont l’identité demeure volontairement ambiguë. Par son esthétique minimaliste et son implantation dans un lieu de passage fréquenté, l’œuvre interroge la mémoire collective, l’anonymat et la place de l’individu dans la ville moderne. Malgré les traces du temps visibles sur sa surface, elle conserve une forte capacité à interpeller les visiteurs et les habitants.",
            type: .stencil,
            condition: .bad,
            date: Date(),
            author: Author.mock,
            adresse: "Canal Saint-Martin",
            borough: "75010",
            city: "Paris",
            latitude: 48.8720,
            longitude: 2.3658
        ),

        Art(
            image: "chuuut",
            title: "Chuuuut...",
            detail:
                "Installée dans une rue animée du centre historique, cette œuvre au pochoir met en scène un personnage invitant symboliquement au silence. Le contraste entre le message suggéré et l’agitation urbaine environnante renforce son impact visuel. Grâce à son exécution précise et à sa composition épurée, l’œuvre est devenue l’une des créations les plus remarquées du secteur par les amateurs de street art.",
            type: .stencil,
            condition: .excellent,
            date: Date(),
            author: Author.mock,
            adresse: "Rue Quincampoix",
            borough: "75004",
            city: "Paris",
            latitude: 48.8606,
            longitude: 2.3498
        ),

        Art(
            image: "leTigreEtLaCigale",
            title: "Le Tigre et la Cigale",
            detail:
                "Cette fresque animalière met en scène un tigre et une cigale dans une composition riche en détails et en couleurs. Inspirée des récits symboliques et des fables traditionnelles, elle propose une lecture ouverte sur les relations entre force, intelligence et adaptation. Réalisée sur un mur particulièrement visible du quartier, l’œuvre participe activement à l’embellissement et à l’animation de l’espace public.",
            type: .stencil,
            condition: .good,
            date: Date(),
            author: Author.mock,
            adresse: "Rue Pastoret",
            borough: "13006",
            city: "Marseille",
            latitude: 43.2918,
            longitude: 5.3815
        ),
    ]
}
