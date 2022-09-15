//
//  CardImageScroller.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 15/09/2022.
//

import SwiftUI
import KingfisherSwiftUI


struct CardImageScroller: View {
    
    var person: Person
    
    @State private var imageIndex = 0
    
    func updateImageIndex(addition: Bool){
        let newIndex: Int
        
        if addition {
            newIndex = imageIndex + 1
        } else {
            newIndex = imageIndex - 1
        }
        
        imageIndex = min(max(0, newIndex), person.imagesURLS.count - 1)
    }
    var body: some View {
        GeometryReader { geo in
            ZStack{
                KFImage(person.imagesURLS[imageIndex])
                    .placeholder {
                        Color.white
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width, height: geo.size.height)
                    .clipped()
                
                HStack{
                    Rectangle()
                        .onTapGesture {
                            updateImageIndex(addition: false )
                        }
                    
                    Rectangle()
                        .onTapGesture {
                            updateImageIndex(addition: true)
                        }
                }
                .foregroundColor(Color.white.opacity(0.001))
            }
        }
    }
}

struct CardImageScroller_Previews: PreviewProvider {
    static var previews: some View {
        CardImageScroller(person: Person.example)
    }
}
