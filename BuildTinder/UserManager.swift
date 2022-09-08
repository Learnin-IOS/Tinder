//
//  UserManager.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 01/09/2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "", age: 0, jobTitle: "b")
    @Published var matches: [Person] = []
    @Published var topPicks: [Person] = []
    
    init(){
        loadUser()
        loadMatches()
        loadTopPicks()
    }
    
   private func loadUser(){
       self.currentUser = User.example
    }
    
    private func loadMatches() {
        self.matches = Person.examples
    }
    private func loadTopPicks(){
        self.topPicks = Person.examples.shuffled()
    }
}
