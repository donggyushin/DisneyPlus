//
//  ChannelView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/09.
//

import SwiftUI

struct ChannelView: View {
    
    let channels: [Channel]
    
    var body: some View {
        HStack {
            ForEach(channels, id: \.self) { channel in
                Button {
                    print("dg: clicked channel button")
                } label: {
                    Image(channel.rawValue)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .background(
                    LinearGradient(gradient: .init(colors: [ColorConstants.darkBluishGrayColor, ColorConstants.darkGrayColor]), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(5)
                .shadow(radius: 10)
            }
        }
        .padding()
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            ChannelView(channels: Channel.allCases)
        }
    }
}
