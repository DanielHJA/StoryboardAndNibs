//
//  AnimalTableViewCell.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-11-28.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class AnimalTableViewCell: BaseTableViewCell<Animal> {
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.textColor = UIColor.black
            label.textAlignment = .left
            label.minimumScaleFactor = 0.7
            label.adjustsFontSizeToFitWidth = true
            label.font = UIFont.systemFont(ofSize: 20.0, weight: .medium)
        }
    }
    
    override func configure(_ object: Animal) {
        label.text = object.name
    }

}
