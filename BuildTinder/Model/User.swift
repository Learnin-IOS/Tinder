//
//  User.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 01/09/2022.
//

import Foundation

struct User {
    var name: String
    var age: Int
    var jobTitle: String
    var goldSubscriber: Bool = false
    var profileTip: String =  ""
    var imageURLS : [URL] = []
    
}


extension User {
    static let example = User(
        name: "Le Bon",
        age: 25,
        jobTitle: "Software Engineer",
        goldSubscriber: false, profileTip: "Photo Tip: Makes waves with a beach photo and get more likes" ,
        imageURLS: [URL(string: "https://picsum.photos/400/310")!]
    )
}
