//
//  Subscription.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 12/09/2022.
//

import Foundation

struct Subscription: Identifiable {
    let id = UUID()
    
    var month: Int
    var montlyCost: Double
    var totalCost: Double
    var savePercent: Int?
    var tagLine: TagLine = .none
    
    enum TagLine : String {
        case mostPopular = "MOST POPULAR"
        case bestvalue = "BEST VALUE"
        case none
    }
}
    extension Subscription {
        static let example1 = Subscription(
            month: 6,
            montlyCost: 15.00,
            totalCost: 89.99,
            savePercent: 50,
            tagLine: .bestvalue
        )
        
        static let example2 = Subscription(
            month: 3,
            montlyCost: 20.00,
            totalCost: 59.99,
            savePercent: 33,
            tagLine: .mostPopular
        )
        static let example3 = Subscription(
            month: 1,
            montlyCost: 29.99,
            totalCost: 29.99
        )
    }


