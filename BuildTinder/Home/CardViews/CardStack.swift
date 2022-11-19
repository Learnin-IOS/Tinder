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
        GeometryReader { geo in
            ZStack {
                ForEach(people) { person in
                    CardView(person: person, fullScreenMode: $fullScreenMode)
                }
            }
            // Height to 100% of the screen
            .frame(width: screen.width, height: fullScreenMode ? screen.height : geo.size.height * 1.0)
        }
    }
}

struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStack(people: Person.examples)
    }
}
