//
//  MatchesView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 08/09/2022.
//

import SwiftUI

struct MatchesView: View {
    @EnvironmentObject var userMng: UserManager
    @State private var selectedTab: LikedTab = .likes
    
    
    enum LikedTab {
        case likes
        case topPicks
    }
    var body: some View {
        VStack( spacing: 0){
            HStack{
                Spacer()
                Button(action: { selectedTab = .likes}, label: {
                    Text("\(userMng.matches.count) likes")
                        .font(.system(size: 22, weight: .semibold))
                        .if( selectedTab == .topPicks) {
                            $0.foregroundColor(.textPrimary)
                        }
                })
                .buttonStyle(PlainButtonStyle())
            
                Spacer()
                
                Button(action: { selectedTab = .topPicks}, label: {
                    Text("\(userMng.topPicks.count) Top Picks")
                        .font(.system(size: 22, weight: .semibold))
                        .if( selectedTab == .likes) {
                            $0.foregroundColor(.textPrimary)
                        }
                })
                .buttonStyle(PlainButtonStyle())
                Spacer()
            }
            Divider()
                .padding(.vertical, 14)
            
            if selectedTab == .likes {
                LikesView()
            } else {
                TopPicksView()
            }
            
            Spacer()
        }
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView()
            .environmentObject(UserManager())
    }
}
