//
//  MovieSectionView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/09.
//

import SwiftUI

struct MovieSectionView: View {
    
    var movieSection: MovieSection
    
    @State private var selectedMovie: Movie?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movieSection.sectionName)
                .font(.title3)
                .bold()
                .foregroundColor(.gray)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(movieSection.movies) { movie in
                        Button {
                            self.selectedMovie = movie
                        } label: {
                            Image(movie.posterImage)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                                .frame(width: 150)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct MovieSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            MovieSectionView(movieSection: .recommended)
        }.preferredColorScheme(.dark)
    }
}
