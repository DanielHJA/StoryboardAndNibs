//
//  DetailViewController.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-11-30.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var animalLabel: UILabel!
    
    private lazy var counterView: CounterView = {
        let temp = CounterView.loadViewFromNib()
        view.addSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        temp.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        temp.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        temp.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterView.isHidden = false
        
    }

}
