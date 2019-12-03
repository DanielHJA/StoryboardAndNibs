//
//  MockData.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-11-28.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class MockData: NSObject {

    class func data() -> [Any] {
        
//        let animals = [
//            Animal(name: "Lion"),
//            Animal(name: "Dog"),
//            Animal(name: "Elephant"),
//            Animal(name: "Giraffe"),
//            Animal(name: "Cat"),
//        ]
        
        let links = [
            Link(urlString: "https://www.google.com"),
            Link(urlString: "https://www.metro.se"),
            Link(urlString: "https://aftonbladet.se"),
        ]
        
        return links.shuffled()
//        return (animals + links).shuffled()
        
    }
    
}
