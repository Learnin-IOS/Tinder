//
//  AppStateManager.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 16/08/2022.
//

import Foundation


class AppStateManager: ObservableObject{
    @Published var selectedTab: TabBarButtonType = .fire
    @Published var showPersonsProfile: Person? = nil
    @Published var showPurchasePopup: Bool = false
    
    public func showPersonsProfile(_ person: Person){
        self.showPersonsProfile = person
    }
    
//    public func showPurchaseScreen () {
//        self.showPurchasePopup = true
//    }
}
