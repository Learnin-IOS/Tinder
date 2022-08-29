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
    
    
    public func sendMessage(_ message: Message) {
            // Networking Call
        messages.append(message)
        // if networking failure show error with some retry options
    }
    
    private func loadMessages(){
          messages = [Message.exampleSent, Message.exampleRecieved]
    }
}
