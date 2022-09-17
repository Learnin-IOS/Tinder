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
    @Published var cardPeople: [Person] = []
    
    init(){
        loadUser()
        loadMatches()
        loadTopPicks()
        loadCardPeople()
    }
    
    private func loadCardPeople(){
        self.cardPeople = Person.examples
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
    
    public func swipe(_ person: Person, _ direction: SwipeDirection){
        //Network Call to backend
        cardPeople.removeLast()
    }
    public func superLike(_ person: Person) {
        //Network Call to backend 
        cardPeople.removeLast()
    }
}

enum SwipeDirection {
    case like
    case nope
}
