//
//  User.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 01/09/2022.
//

import Foundation

struct User {
    var name: String
    
    var goldSubscriber: Bool = false
}


extension User {
    static let example = User(name: "Alex", goldSubscriber: false )
}
