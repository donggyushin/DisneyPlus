//
//  Movie.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/08.
//

import Foundation

struct Movie: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var posterImage: String
    var promoImage: String
    var details: String
    var movieUrl: String
}

extension Movie {
    static var promos: [Movie] {
        return [
            Movie(title: "Frozen I", posterImage: "Frozen", promoImage: "frozen_promo", details: "Young princess Anna of Arendelle dreams about finding true love at her sister Elsa’s coronation. Fate takes her on a dangerous journey in an attempt to end the eternal winter that has fallen over the kingdom. She's accompanied by ice delivery man Kristoff, his reindeer Sven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
            Movie(title: "Mandalorian", posterImage: "Mandalorian", promoImage: "Mandalorian", details: "After the fall of the Galactic Empire, lawlessness has spread throughout the galaxy. A lone gunfighter makes his way through the outer reaches, earning his keep as a bounty hunter. The Mandalorian and the Child continue their journey, facing enemies and rallying allies as they make their way through a dangerous galaxy in the tumultuous era after the collapse of the Galactic Empire.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"),
            Movie(title: "The Falcon and The Winter Soldier", posterImage: "FalconNWS", promoImage: "FalconNWS", details: "Following the events of “Avengers: Endgame”, the Falcon, Sam Wilson and the Winter Soldier, Bucky Barnes team up in a global adventure that tests their abilities, and their patience. ", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")
        ]
    }
}
