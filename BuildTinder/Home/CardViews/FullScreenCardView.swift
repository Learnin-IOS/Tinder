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
    
    @EnvironmentObject var userMng: UserManager
    
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
                        
                        Button(action: { fullScreenMode = false}, label: {
                            Image(systemName: "arrow.down.circle.fill")
                                .font(.system(size: 42))
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                        .padding(.trailing, 15)
                        .offset(y: -40)
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
                        Button(action: { showActionSheet() }, label: {
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
            
            HStack (spacing: 20){
                Spacer()
                
                CircleButtonView(type: .no) {
                    fullScreenMode = false
                    userMng.swipe( person, .nope)
                }
                .frame(height: 50)
                CircleButtonView(type: .star) {
                    fullScreenMode = false
                    userMng.superLike(person)
                }
                .frame(height: 45)
                CircleButtonView(type: .heart) {
                    fullScreenMode = false
                    userMng.swipe(person, .like)
                }
                .frame(height: 50)
                
                Spacer()
            }
            .padding(.top, 25)
            .padding(.bottom, 45)
            .edgesIgnoringSafeArea(.bottom)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.white.opacity(0.2), Color.white]),
                    startPoint: .top,
                    endPoint: .bottom)
            )
        }
        .edgesIgnoringSafeArea(.bottom)
        .padding(.top, 40)
        
    }
    
    func showActionSheet (){
        let items: [Any] = ["What do you think about \(person.name)? \n"]
        let activity = UIActivityViewController (activityItems: items, applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?
            .present(activity, animated: true, completion: nil)
    }
}
struct FullScreenCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCardView(person: Person.example, fullScreenMode: .constant(true))
    }
}
