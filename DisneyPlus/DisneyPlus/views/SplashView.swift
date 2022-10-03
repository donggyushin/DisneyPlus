//
//  SplashView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/03.
//

import SwiftUI
import SnapKit
import SwiftyGif

final class SplashView: UIViewRepresentable {
    
    private let gifName = "disneyPlusAnimated.gif"
    
    func makeUIView(context: Context) -> some UIView {
        let view: UIView = .init()
        
        do {
            let gif: UIImage = try .init(gifName: gifName)
            let imageView: UIImageView = .init(gifImage: gif, loopCount: 1)
            
            view.addSubview(imageView)
            imageView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
            
        } catch {
            print("dg: \(error.localizedDescription)")
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
}
