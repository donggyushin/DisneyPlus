//
//  CarouselView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/13.
//

import SwiftUI

struct CarouselView: View {
    
    let promos: [Movie] = Movie.promos
    let geo: GeometryProxy
    
    @State private var selectedMovie: Movie?
    
    var body: some View {
        TabView {
            ForEach(promos) { promo in
                ZStack(alignment: .bottom) {
                    Image(promo.promoImage)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                    Button {
                        self.selectedMovie = promo
                    } label: {
                        Text(promo.title)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .frame(maxWidth: .infinity)
                            .background(Color.black.opacity(0.5).blur(radius: 3))
                    }
                    .sheet(item: $selectedMovie) { movie in
                        Text(movie.title)
                    }
                }.frame(width: geo.size.width * 0.9)
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geo in
            ZStack {
                GradientBackgroundView()
                CarouselView(geo: geo)
            }
        }
        
    }
}
