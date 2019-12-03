//
//  Link.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-11-28.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

struct Link {
    let title: String?
    let url: URL?
    let image: UIImage? = UIImage(systemName: "antenna.radiowaves.left.and.right")
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
