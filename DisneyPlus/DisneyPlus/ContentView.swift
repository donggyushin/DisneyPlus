//
//  ContentView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/03.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: -10) {
                getTabPage()
                getTabIcons(geo: geo)
            }
        }
    }
    
    private func getTabPage() -> some View {
        switch tabViewRouter.currentPage {
        case .home:
            return AnyView(HomeView())
        case .search:
            return AnyView(SearchView())
        case .downloads:
            return AnyView(DonwloadsView())
        case .profile:
            return AnyView(ProfileView())
        }
    }
    
    private func getTabIcons(geo: GeometryProxy) -> some View {
        let width = geo.size.width / 4
        let height = geo.size.height / 56
        
        return HStack {
            TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .home, width: width, height: height, systemIconName: "house", tabName: "Home")
            TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .search, width: width, height: height, systemIconName: "magnifyingglass", tabName: "Search")
            TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .downloads, width: width, height: height, systemIconName: "square.and.arrow.down.fill", tabName: "Donwloads")
            TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .profile, width: width, height: height, systemIconName: "person.circle", tabName: "Profile")
        }
        .frame(width: geo.size.width, height: 60)
        .padding(.bottom, 20)
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabViewRouter: TabViewRouter())
    }
}
