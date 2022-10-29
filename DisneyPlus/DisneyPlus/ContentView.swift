//
//  ContentView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/03.
//

import SwiftUI

struct ContentView: View {
    
    let home = HomeView()
    let search = SearchView()
    let downloads = DownloadsView()
    let profile = ProfileView()
    
    @StateObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: -10) {
                ZStack {
                    home
                        .opacity(tabViewRouter.currentPage == .home ? 1 : 0)
                    search
                        .opacity(tabViewRouter.currentPage == .search ? 1 : 0)
                    downloads
                        .opacity(tabViewRouter.currentPage == .downloads ? 1 : 0)
                    profile
                        .opacity(tabViewRouter.currentPage == .profile ? 1 : 0)
                }
                getTabIcons(geo: geo)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .edgesIgnoringSafeArea(.horizontal)
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
        .background(ColorConstants.darkBluishGrayColor.shadow(radius: 2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabViewRouter: TabViewRouter())
    }
}
