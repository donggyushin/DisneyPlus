//
//  MovieSection.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/08.
//

import Foundation

struct MovieSection: Identifiable {
    let id = UUID()
    var sectionName: String
    var movies: [Movie]
    
}

extension MovieSection {
    static var movieSections: [MovieSection] {
        return
            [recommended, hitMovies, playing]
    }
    
    static var recommended: MovieSection {
        return MovieSection(sectionName: "Recommended For You", movies: sampleMovies.shuffled())
    }
    
    static var hitMovies: MovieSection {
        return MovieSection(sectionName: "Hit Movies", movies: sampleMovies.shuffled())
    }
    
    static var playing: MovieSection {
        return MovieSection(sectionName: "Currently Playing", movies: sampleMovies.shuffled())
    }
    
    static var sampleMovies: [Movie] {
        return [
            Movie(title: "Avengers: End Game", posterImage: "Avengers", promoImage: "endGame_promo", details: "After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos' actions and restore order to the universe once and for all, no matter what consequences may be in store.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"),
            Movie(title: "Captain America", posterImage: "CaptainAmerica", promoImage: "captainAmerica_promo", details: "During World War II, Steve Rogers is a sickly man from Brooklyn who's transformed into super-soldier Captain America to aid in the war effort. Rogers must stop the Red Skull – Adolf Hitler's ruthless head of weaponry, and the leader of an organization that intends to use a mysterious device of untold powers for world domination.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"),
            Movie(title: "Captain Marvel", posterImage: "CaptainMarvel", promoImage: "captainMarvel_promo", details: "The story follows Carol Danvers as she becomes one of the universe’s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races. Set in the 1990s, Captain Marvel is an all-new adventure from a previously unseen period in the history of the Marvel Cinematic Universe.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"),
            Movie(title: "Frozen", posterImage: "Frozen", promoImage: "frozen_promo", details: "Young princess Anna of Arendelle dreams about finding true love at her sister Elsa’s coronation. Fate takes her on a dangerous journey in an attempt to end the eternal winter that has fallen over the kingdom. She's accompanied by ice delivery man Kristoff, his reindeer Sven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"),
            Movie(title: "Frozen 2", posterImage: "Frozen2", promoImage: "frozen2_promo", details: "Elsa, Anna, Kristoff and Olaf head far into the forest to learn the truth about an ancient mystery of their kingdom. The kingdom of Arendelle needs to be evacuated when the forces of nature threaten to destroy it. Elsa, Anna, Olaf and Kristoff set off to find some answers. But Elsa has been distracted. She has been hearing an unfamiliar voice calling out to her in a strange tune. Led by her, the group follows the melody to find themselves at the edge of an Enchanted Forest with untold mysteries and dangers.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4"),
            Movie(title: "Iron Man", posterImage: "IronMan", promoImage: "ironman_promo", details: "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil. Heroes aren't born. They're built.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4"),
            Movie(title: "Star Wars", posterImage: "SW_ANewHope", promoImage: "anewHope_promo", details: "Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4"),
            Movie(title: "Star Wars - Rise of Skywalker", posterImage: "SW_RiseOfSkywalker", promoImage: "riseOfSkyWalker_Promo", details: "The surviving Resistance faces the First Order once again as the journey of Rey, Finn and Poe Dameron continues. With the power and knowledge of generations behind them, the final battle begins.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4"),
            Movie(title: "Star Wars - Solo", posterImage: "SW_Solo", promoImage: "solo_promo", details: "Through a series of daring escapades deep within a dark and dangerous criminal underworld, Han Solo meets his mighty future copilot Chewbacca and encounters the notorious gambler Lando Calrissian.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"),
            Movie(title: "Star Wars - The Last Jedi", posterImage: "SW_TheLastJedi", promoImage: "sWTheLastJedi_promo", details: "Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares to do battle with the First Order.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"),
            Movie(title: "Wanda Vision", posterImage: "WandaVision", promoImage: "wandaVision_promo", details: "Wanda Maximoff and Vision—two super-powered beings living idealized suburban lives—begin to suspect that everything is not as it seems.", movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
        ]
    }
}
