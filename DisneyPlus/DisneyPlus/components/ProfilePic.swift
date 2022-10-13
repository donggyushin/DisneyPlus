//
//  ProfilePic.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/13.
//

import SwiftUI

struct ProfilePic: View {
    
    let profile: Profile
    
    var body: some View {
        VStack {
            Text(profile.avatar)
                .shadow(color: ColorConstants.darkBluishGrayColor,radius: 5, x: 2, y: 2)
                .font(.system(size: 80))
                .padding()
                .background(
                    RadialGradient(
                        gradient: .init(colors: [profile.backColor, .white]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 100)
                )
                .clipShape(Circle())
                
            Text(profile.name)
                .foregroundColor(.white)
                .bold()
        }
    }
}

struct ProfilePic_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            ProfilePic(profile: .init(name: "Tiger", avatar: "🐯", backColor: .purple))
        }
        
    }
}
