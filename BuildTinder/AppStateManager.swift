//
//  AppStateManager.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 16/08/2022.
//

import Foundation


class AppStateManager: ObservableObject{
    @Published var selectedTab: TabBarButtonType = .fire
}
