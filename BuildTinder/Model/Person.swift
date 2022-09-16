//
//  Person .swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import SwiftUI


struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
    var name: String
    var imagesURLS: [URL]
    var bio: String
    var age: Int
    var distance: Int
    
    // Used for card manupulation
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
    
    
    var bioDescription: String
}

extension Person {
    static let example = Person(
        name: "Allan",
        imagesURLS: [
            URL(string: "https://picsum.photos/400/310")!,
            URL(string: "https://picsum.photos/400/302")!,
            URL(string: "https://picsum.photos/400/301")!,
            URL(string: "https://picsum.photos/400/300")!
        ],
        bio: "Gaming is my life. I love Dogs, biking, swimming and drinving fast cars.",
        age: 21,
        distance: 16,
        bioDescription: "Single, 3 tamagotchi's. Looking for someone to bring to familly events so the'll stop thinking something is wrong with me."
    )
    
    static let example2 = Person(
        name: "Patrick",
        imagesURLS: [URL(string: "https://picsum.photos/400/304")!],
        bio: "I really love cats",
        age: 25,
        distance: 20,
        bioDescription: "Honesly, I'm just here looking for fun. Married. Couple of kids, Buut looking for some side action."
    )
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(name: "Boohle",
               imagesURLS: [
                URL(string: "https://picsum.photos/400/309")!,
                URL(string: "https://picsum.photos/400/313")!,
                URL(string: "https://picsum.photos/400/307")!,
                URL(string: "https://picsum.photos/400/314")!
                
               ],
               bio: "I love hiking",
               age: 28,
               distance: 22,
               bioDescription: "I'm on tinder to make frineds the same way i'm on pornhub to see a plumber repair a sink."),
        Person(name: "Nikita",
               imagesURLS: [
                URL(string: "https://picsum.photos/400/304")!,
                URL(string: "https://picsum.photos/400/311")!,
                URL(string: "https://picsum.photos/400/308")!,
                URL(string: "https://picsum.photos/400/310")!
                           ],
               bio: "Music is more than art to me",
               age: 23,
               distance: 18,
               bioDescription: "Honestly, I'm just here looking for fun. Married. Couple of kids, Buut looking for some side action."),
        Person(name: "Samantha",
               imagesURLS: [
                URL(string: "https://picsum.photos/400/305")!,
                URL(string: "https://picsum.photos/400/302")!,
                URL(string: "https://picsum.photos/400/301")!,
                URL(string: "https://picsum.photos/400/304")!
               ],
               bio: "I love travelling",
               age: 27,
               distance: 72,
               bioDescription: "Honestly, I'm just here looking for fun. Married. Couple of kids, Buut looking for some side action."),
        Person(name: "Charles",
               imagesURLS: [
                URL(string: "https://picsum.photos/400/306")!,
                URL(string: "https://picsum.photos/400/302")!,
                URL(string: "https://picsum.photos/400/303")!,
                URL(string: "https://picsum.photos/400/307")!
               ],
               bio: "i love tring new cuisine",
               age: 19,
               distance: 38,
               bioDescription: "Honestly, I'm just here looking for fun. Married. Couple of kids, Buut looking for some side action."),
        Person(name: "Mia",
               imagesURLS: [
                URL(string: "https://picsum.photos/400/300")!,
                URL(string: "https://picsum.photos/400/315")!,
                URL(string: "https://picsum.photos/400/312")!,
                URL(string: "https://picsum.photos/400/301")!,
                           ],
               bio: "I am really boring ",
               age: 30,
               distance: 9,
               bioDescription: "Honestly, I'm just here looking for fun. Married. Couple of kids, Buut looking for some side action.")
    
    ]
}
