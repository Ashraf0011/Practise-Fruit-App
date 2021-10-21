//
//  Model.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 17/10/21.
//

import SwiftUI
// MARK: DATA Model
struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var image: String
    var headline: String
    var description: String
    var gradientColors: [Color]
    var nutration: [String]
}
