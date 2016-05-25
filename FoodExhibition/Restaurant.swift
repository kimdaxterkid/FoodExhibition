//
//  Restaurant.swift
//  FoodExhibition
//
//  Created by DavidKim on 5/25/16.
//  Copyright © 2016 Taiwen Jin. All rights reserved.
//

import Foundation

struct Restaurant {
    var name: String
    var type: String
    var location: String
    var image: String
    var isVisited: Bool
}
//struct type is much easier than class type
//also it is easy for the device to deal with the memory management

//class Restaurant {
//    var name: String
//    var type: String
//    var location: String
//    var image: String
//    var isVisited: Bool
//    init(name: String, type: String, location: String, image: String, isVisited: Bool) {
//        self.name = name
//        self.type = type
//        self.location = location
//        self.image = image
//        self.isVisited = isVisited
//    }
//}