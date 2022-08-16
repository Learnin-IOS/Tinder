//
//  MainView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 16/08/2022.
//

import SwiftUI



struct MainView: View {
    
    @EnvironmentObject var appState: AppStateManager
    
    func correctViewForState() -> some View{
        switch appState.selectedTab {
            
        case .fire:
            let view = Text("Fire")
            return AnyView(view)
        case .star:
            let view = Text("Star")
            return AnyView(view)
        case .message:
            let view = Text("Message")
            return AnyView(view)
        case .profile:
            let view = Text("Profile")
            return AnyView(view)
        }
    }
    var body: some View {
        ZStack{
            Color(.systemGray6)
                .opacity(0.35)
                .edgesIgnoringSafeArea(.vertical)
            VStack{
                HStack {
                    Spacer()
                    
                    TabBarButtonView(type: .fire)
                    
                    Spacer()
                    
                    TabBarButtonView(type: .star)
                    
                    Spacer()
                    
                    TabBarButtonView(type: .message)
                    
                    Spacer()
                    
                    TabBarButtonView(type: .profile)
                    
                    Spacer()
                }
                .frame( height: 100)
                .padding(.top, 30)
                correctViewForState()
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.vertical)
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(AppStateManager())
    }
}
