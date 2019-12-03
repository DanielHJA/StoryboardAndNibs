//
//  Extensions.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-12-03.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

extension UIViewController {
    static func loadViewControllerFromStoryboard() -> Self  {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        return storyboard.instantiateViewController(identifier: String(describing: self)) as! Self
    }
}

extension Link {
    init(urlString: String) {
        self.url = URL(string: urlString)
        self.title = url?.extractHostName()
    }
}

extension URL {
    func extractHostName() -> String? {
        return self.host
    }
}

extension UIView {
    static func loadViewFromNib() -> Self {
        return Bundle.main.loadNibNamed(String(describing: self), owner: self, options: nil)![0] as! Self
    }
}

