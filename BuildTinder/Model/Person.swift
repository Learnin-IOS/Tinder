//
//  Person .swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import Foundation


struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
    var name: String
    var imagesURLS: [URL]
    var bio: String
    var age: Int
}

extension Person {
    static let example = Person(
        name: "Alex",
        imagesURLS: [URL(string: "https://picsum.photos/400/300")!],
        bio: "Gaming is my life",
        age: 21
    )
    
    static let example2 = Person(
        name: "Patrick",
        imagesURLS: [URL(string: "https://picsum.photos/400/304")!],
        bio: "I really love cats",
        age: 25
    )
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(name: "Boohle",
               imagesURLS: [URL(string: "https://picsum.photos/400/302")!],
               bio: "I love hiking",
               age: 28),
        Person(name: "Nikita",
               imagesURLS: [URL(string: "https://picsum.photos/400/303")!],
               bio: "Music is more than art to me",
               age: 23),
        Person(name: "Samantha",
               imagesURLS: [URL(string: "https://picsum.photos/400/305")!],
               bio: "I love travelling",
               age: 27),
        Person(name: "Olivia",
               imagesURLS: [URL(string: "https://picsum.photos/400/306")!],
               bio: "i love tring new cuisine",
               age: 19),
        Person(name: "Mia",
               imagesURLS: [URL(string: "https://picsum.photos/400/307")!],
               bio: "I am really boring ",
               age: 30)
    
    ]
}
