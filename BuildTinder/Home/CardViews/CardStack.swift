//
//  CardStack.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 16/09/2022.
//

import SwiftUI

struct CardStack: View {
    
    var people: [Person]
    
    @State private var fullScreenMode: Bool = false
    
    var screen = UIScreen.main.bounds
    
    var body: some View {

        ZStack {
            ForEach(people) { person in
                CardView(person: person, fullScreenMode: $fullScreenMode)
            }
        }
        .frame(width: screen.width, height: fullScreenMode ? screen.height : 550)
    }
}

struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStack(people: Person.examples)
    }
}
