//
//  HomeView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 17/09/2022.
//

import SwiftUI

struct HomeView: View {
    
    
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    
    var body: some View {
        VStack{
            GeometryReader { geo in
                CardStack(people: userMng.cardPeople)
                    .frame(height: geo.size.height * 1.15)
            }
            CircleHorizontalTab
                .offset(y: -2)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}

private extension HomeView {
    // Circle button View
    var CircleHorizontalTab: some View {
        HStack {
            CircleButtonView(type: .back) {
                appState.showPurchaseScreen()
            }
            Spacer()
            
            CircleButtonView(type: .no) {
                if let person = userMng.cardPeople.last {
                    userMng.swipe(person, .nope)
                }
            }
            Spacer()
            
            CircleButtonView(type: .star) {
                if let person = userMng.cardPeople.last {
                    if userMng.currentUser.goldSubscriber {
                        userMng.superLike(person)
                    } else {
                        appState.showPurchaseScreen()
                    }
                }
            }
            Spacer()
            
            CircleButtonView(type: .heart) {
                if let person = userMng.cardPeople.last {
                    userMng.swipe(person, .like)
                }
            }
            Spacer()
            
            CircleButtonView(type: .lightning) {
                appState.showPurchaseScreen()
            }
        }
        .frame(height: 50)
        .padding(.horizontal)
        .padding(.vertical, 25)
    }
}
