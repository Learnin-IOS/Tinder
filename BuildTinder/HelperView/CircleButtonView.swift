//
//  CircleButtonView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 16/09/2022.
//

import SwiftUI
enum ButtonType : String {
    case back = "gobackward"
    case no = "xmark"
    case star = "star.fill"
    case heart = "heart.fill"
    case lightning = "cloud.bolt.fill"
}

struct CircleButtonView: View {
    var type: ButtonType
    
    var action: () -> Void
    
    var body: some View {
        Button(action: { action() }, label: {
            Image(systemName: type.rawValue)
                .resizable()
                .font(.system(size: 12, weight: .bold))
                .aspectRatio(contentMode: .fit)
        })
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack{
            Color.gray.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 50 ){
                CircleButtonView(type: .back) {}
                    .frame(height: 50)
                CircleButtonView(type: .no) {}
                    .frame(height: 50)
                CircleButtonView(type: .star) {}
                    .frame(height: 50)
                CircleButtonView(type: .heart) {}
                    .frame(height: 50)
                CircleButtonView(type: .lightning) {}
                    .frame(height: 50)
            }
            
        }
       
    }
}
