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

struct CircleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                Circle()
                    .foregroundColor(Color.white)
            )
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
    }
}


struct ColorButton: ViewModifier {
    var type: ButtonType
    
    func body(content: Content) -> some View {
        switch type {
        case .back:
            return AnyView(
                content
                 .foregroundColor(.yellow))
        case .no:
            return AnyView(
                content
                    .foregroundColor(.red))
        case .star:
            return AnyView(
                content
                    .foregroundColor(.blue))
        case .heart:
            return AnyView(
            content
                .foregroundColor(.green))
        case .lightning:
            return AnyView(
            content
                .foregroundColor(.purple))
        }
    }
}


// Alternative

extension View {
    func colorButton(type: ButtonType) -> some View{
        self.modifier(ColorButton(type: type))
    }
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
                .padding(12)
        })
        .buttonStyle(CircleButton())
//        .modifier(ColorButton(type: type))
        .colorButton(type: type)
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
