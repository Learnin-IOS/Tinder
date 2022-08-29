//
//  Message.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import Foundation

struct Message {
    var content: String
    var person: Person? = nil
    
    var fromCurrentUser: Bool {
        return person == nil
    }
}

extension Message {
    static let exampleSent  = Message(content: "Hello there")
    static let exampleRecieved = Message(content: "Hello there", person: Person.example)
}
