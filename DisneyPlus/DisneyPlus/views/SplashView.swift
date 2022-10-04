//
//  SplashView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/03.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                if isActive {
                    ContentView()
                } else {
                    SplashRepresentableView()
                        .frame(width: 300, height: 300)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation {
                        self.isActive.toggle()
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
