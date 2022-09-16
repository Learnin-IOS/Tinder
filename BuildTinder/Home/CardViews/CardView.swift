//
//  CardView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 15/09/2022.
//

import SwiftUI

struct CardView: View {
    
    @State var person: Person
    
    @Binding var fullScreenMode: Bool
    
    let screenCutoff  = (UIScreen.main.bounds.width / 2) * 0.8
    var body: some View {
        GeometryReader { geo in
            if fullScreenMode {
                FullScreenCardView(person: person, fullScreenMode: $fullScreenMode)
            } else {
                CardImageScroller(person: person, fullScreenMode: $fullScreenMode)
                    .animation(.easeOut(duration: 0.2))
                    .frame(width: geo.size.width - 20, height: geo.size.height)
                    .padding(.leading, 10)
                    .offset(x: person.x, y: person.y)
                    .rotationEffect(.degrees(person.degree))
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                withAnimation(.default) {
                                    person.x = value.translation.width
                                    person.y = value.translation.height
                                    withAnimation {
                                        person.degree = Double( (value.translation.width / 25) * -1)
                                    }
                                }
                            })
                            .onEnded({ value in
                                withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 10, initialVelocity: 0)) {
                                    let width = value.translation.width
                                    
                                    if width >= 0 && width <= screenCutoff {
                                        // Snap back to middle
                                        person.x = 0
                                        person.y = 0
                                        person.degree = 0
                                    } else if width <= -1 && width >= -screenCutoff {
                                        // Snap back to middle
                                        person.x = 0
                                        person.y = 0
                                        person.degree = 0
                                    } else if width > screenCutoff {
                                        // Swipe right
                                        person.x = 500
                                        person.degree = 12
                                        
                                    } else if width < -screenCutoff {
                                        // Swipe left
                                        person.x = -500
                                        person.degree = -12
                                        
                                    }
                                }
                            })
                    )
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(person: Person.example, fullScreenMode: .constant(false))
        CardView(person: Person.example, fullScreenMode: .constant(true))
    }
}
