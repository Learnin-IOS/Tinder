//
//  FullScreenCardView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 15/09/2022.
//

import SwiftUI

struct FullScreenCardView: View {
    
    var person: Person
    
    let screen = UIScreen.main.bounds
    
    @Binding var fullScreenMode: Bool
    var body: some View {
        ScrollView(showsIndicators: false){
             CardImageScroller(
                person: person,
                fullScreenMode: $fullScreenMode )
             .frame(width: screen.width, height: screen.height * 0.6)
            
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text(person.name)
                            .font(.system(size: 32, weight: .bold))
                        
                        Text(String(person.age))
                            .font(.system(size: 28, weight: .light))
                        
                        Spacer()
                    }
                    .opacity(0.75)
                    
                    Text("")
                }
            }
        }
    }
}

struct FullScreenCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCardView(person: Person.example, fullScreenMode: .constant(true))
    }
}
