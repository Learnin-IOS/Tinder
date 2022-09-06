//
//  UserManager.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 01/09/2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "")
    @Published var matches: [Person] = []
    
    init(){
        loadUser()
        loadMatches()
    }
    
    
    
   private func loadUser(){
       self.currentUser = User.example
    }
    
    private func loadMatches() {
        self.matches = Person.examples
    }
}
