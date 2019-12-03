//
//  Animal.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-11-28.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit
import ObjectMapper

struct Animal: Mappable {

    var id: String?
    var name: String!
    var headline: String!
    var age: Int!
    var hobbies = [String]()
    
    init?(map: Map) {
        guard let id: String = map["id"].value() else { return nil }
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        headline <- map["headline"]
        age <- map["age"]
        hobbies <- map["hobbies"]
    }
    
}
