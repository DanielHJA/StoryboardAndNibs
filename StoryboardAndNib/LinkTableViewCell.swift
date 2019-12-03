//
//  LinkTableViewCell.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-11-28.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class LinkTableViewCell: BaseTableViewCell<Link> {

    @IBOutlet weak var label: UILabel! {
        didSet {
            label.textColor = UIColor.blue
            label.textAlignment = .left
            label.minimumScaleFactor = 0.7
            label.adjustsFontSizeToFitWidth = true
            label.font = UIFont.systemFont(ofSize: 20.0, weight: .bold)
        }
    }
    
    @IBOutlet weak var iconImageView: UIImageView! {
        didSet {
            iconImageView.contentMode = .scaleAspectFit
        }
    }
    
    private var url: URL?
    
    override func configure(_ object: Link) {
        label.text = object.title
        self.url = object.url
        iconImageView.image = object.image
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let url = url else { return }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }

}
