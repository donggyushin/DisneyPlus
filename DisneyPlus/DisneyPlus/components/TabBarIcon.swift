//
//  TabBarIcon.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/05.
//

import SwiftUI

struct TabBarIcon: View {
    
    @StateObject var tabViewRouter: TabViewRouter
    
    let currentPage: TabViewRouter.Page
    let width: CGFloat
    let height: CGFloat
    let systemIconName: String
    let tabName: String
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            
            Text(tabName)
                .font(.footnote)
        }
        .foregroundColor(tabViewRouter.currentPage == currentPage ? .white : .gray)
        .padding(.horizontal, -4)
        .onTapGesture {
            tabViewRouter.currentPage = currentPage
        }
    }
}
