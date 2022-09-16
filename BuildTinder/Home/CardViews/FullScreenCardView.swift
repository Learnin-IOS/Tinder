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
        ZStack (alignment: .bottom ){
            ScrollView(showsIndicators: false){
                VStack(spacing: 0) {
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
                            
                            Text("\(person.distance) Km away")
                                .font(.system(size: 18, weight: .medium))
                                .opacity(0.75)
                        }
                        .padding([.horizontal, .top], 16)
                        
                        Button(action: {}, label: {
                            Image(systemName: "arrow.down.circle.fill")
                                .font(.system(size: 42))
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                        .padding(.trailing, 15)
                        .offset(y: -45)
                    }
                    
                    Spacer().frame(height: 26)
                    
                    HStack{
                        Text(person.bioDescription)
                            .font(.system(size: 18, weight: .medium))
                            .lineLimit(20)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                            .opacity(0.75)
                            .padding(.horizontal, 15)
                        
                        Spacer()
                        
                    }
                    
                    Spacer().frame(height: 32)
                    
                    VStack(spacing: 24){
                        Button(action: {}, label: {
                            VStack(spacing: 8) {
                                Text("SHARE \(person.name.uppercased())'S PROFILE")
                                    .font(.system(size: 15, weight:  .medium))
                                
                                Text("SEE WHAT A FRIEND THINKS")
                                    .font(.system(size: 13, weight:  .medium))
                            }
                            .opacity(0.9)
                        })
                        Button(action: {}, label: {
                            Text("REPORT \(person.name.uppercased())")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(.black)
                                .opacity(0.75)
                        })
                    }
                    
                    Spacer().frame(height: 200)
                }
            }
            
            Text("TEST")
        }
        
    }
}
struct FullScreenCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCardView(person: Person.example, fullScreenMode: .constant(true))
    }
}
