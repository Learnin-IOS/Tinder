//
//  ContentView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 16/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var manager: AppStateManager = AppStateManager()
    
    @ObservedObject var userMng: UserManager = UserManager()
    
    var body: some View {
        MainView()
            .environmentObject(manager)
            .environmentObject(userMng)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
