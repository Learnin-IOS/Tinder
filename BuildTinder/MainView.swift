//
//  MainView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 16/08/2022.
//

import SwiftUI



struct MainView: View {
    var body: some View {
        ZStack{
            Color(.systemGray6)
                .opacity(0.35)
                .edgesIgnoringSafeArea(.vertical)
            VStack{
                HStack {
                    Spacer()
                    TabBarButtonView(type: .fire) {
                        
                    }
                    Spacer()
                    TabBarButtonView(type: .star) {
                        
                    }
                    Spacer()
                    TabBarButtonView(type: .message) {
                        
                    }
                    Spacer()
                    TabBarButtonView(type: .profile) {
                        
                    }
                    Spacer()
                }
                .frame( height: 100)
                
                Spacer()
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
