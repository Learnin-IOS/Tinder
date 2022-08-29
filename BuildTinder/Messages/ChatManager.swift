//
//  ChatManager.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import Foundation

class ChatManager: ObservableObject {
    @Published var messages:[Message] = []
    
    private var person: Person
    
    init(person: Person){
        self.person = person
        loadMessages()
    }
    
    private func loadMessages(){
          messages = [Message.exampleSent, Message.exampleRecieved]
    }
}
