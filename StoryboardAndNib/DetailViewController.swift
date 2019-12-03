//
//  DetailViewController.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-11-30.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var animal: Animal?

    @IBOutlet weak var animalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animalLabel.text = animal?.name

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
