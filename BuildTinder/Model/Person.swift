//
//  Person .swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import Foundation


struct Person: Hashable {
    var name: String
    var imagesURLS: [URL]
    var bio: String
}

extension Person {
    static let example = Person(
        name: "Alex",
        imagesURLS: [URL(string: "https://picsum.photos/400/300")!],
        bio: "Gaming is my life"
    )
    
    static let example2 = Person(
        name: "Patrick",
        imagesURLS: [URL(string: "https://picsum.photos/400/301")!],
        bio: "I really love cats"
    )
}
