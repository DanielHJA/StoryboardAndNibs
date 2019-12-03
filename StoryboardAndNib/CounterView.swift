//
//  ButtonView.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-12-03.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class CounterView: UIView {
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.font = UIFont.systemFont(ofSize: 35.0)
            label.text = "\(counter)"
        }
    }
    
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.titleLabel?.text = "Increase count"
        }
    }
    
    var counter = 0 {
        didSet {
            label.text = "\(counter)"
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureFrames()
    }
    
    private func configureFrames() {
        
    }
    
    private func commonInit() {
        
    }
    
    @IBAction func didTouchButton(_ sender: Any) {
        counter += 1
    }
    
}
