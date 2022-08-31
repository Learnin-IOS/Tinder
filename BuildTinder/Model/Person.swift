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
}

extension Person {
    static let example = Person(name: "Alex", imagesURLS: [URL(string: "https://picsum.photos/400/300")!])
    static let example2 = Person(name: "Patrick", imagesURLS: [URL(string: "https://picsum.photos/400/301")!])
}
