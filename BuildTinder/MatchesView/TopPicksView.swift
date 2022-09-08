//
//  TopPicksView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 08/09/2022.
//

import SwiftUI

struct TopPicksView: View {
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    
    private var user: User {
        return userMng.currentUser
    }
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            
            if !user.goldSubscriber {
            Text("Upgrade to tinder Gold for more top picks.")
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .foregroundColor(.textTitle)
                .font(.system(size: 16, weight: .medium))
                .padding(.horizontal, 40)
                .padding(.vertical, 24)
            }
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: [],
                      content: {
                ForEach(userMng.matches) { match in
                    PersonSquare(person: match, blur: !user.goldSubscriber)
                        .frame(height: 240)
                        .onTapGesture {
                            personTapped(match)
                        }
                }
            })
            .padding(.horizontal, 6)
        })
    }
    
    func personTapped(_ person: Person){
        if user.goldSubscriber {
            appState.showPersonsProfile(person)
        } else {
            appState.showPurchaseScreen()
        }
    }
}

struct TopPicksView_Previews: PreviewProvider {
    static var previews: some View {
        TopPicksView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}
