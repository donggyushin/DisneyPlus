//
//  SearchView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/05.
//

import SwiftUI

struct SearchView: View {
    
    private var searchCategories: [SearchCategory] = [
        .init(title: "Originals", systemImage: "star.fill"),
        .init(title: "Movies", systemImage: "film"),
        .init(title: "Series", systemImage: "personalhotspot")
    ]
    
    @State private var searchText: String = ""
    @State private var selectedMovie: Movie?
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack(alignment: .leading, spacing: 20) {
                searchView
                ScrollView(showsIndicators: false) {
                    exploreText
                    categoryButtons
                    movies
                }
            }
            .padding()
        }
    }
    
    private var searchView: some View {
        VStack {
            ZStack(alignment: .leading) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search by title, character or genre", text: $searchText)
                    .foregroundColor(.gray)
                    .padding(.leading, 20)
            }
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 10).fill(Color.black)
            )
        }
    }
    
    private var exploreText: some View {
        HStack {
            Text("Explore")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Spacer()
        }
    }
    
    private var categoryButtons: some View {
        HStack(spacing: 30) {
            ForEach(searchCategories) { category in
                SquareButton(searchCategory: category)
            }
        }
    }
    
    private var movies: some View {
        LazyVGrid(columns: [.init(.adaptive(minimum: 150, maximum: 200))]) {
            ForEach(getFilteredMovies()) { movie in
                ZStack {
                    Button {
                        self.selectedMovie = movie
                    } label: {
                        Image(movie.posterImage)
                            .resizable()
                            .cornerRadius(10)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    .sheet(item: $selectedMovie) { movie in
                        Text(movie.title)
                    }
                }
            }
        }
    }
    
    private func getFilteredMovies() -> [Movie] {
        searchText.isEmpty ? MovieSection.sampleMovies : MovieSection.sampleMovies.filter{ $0.title.lowercased().contains(searchText.lowercased()) }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView().preferredColorScheme(.dark)
    }
}
