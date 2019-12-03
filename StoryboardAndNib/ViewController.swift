//
//  ViewController.swift
//  StoryboardAndNib
//
//  Created by Daniel Hjärtström on 2019-11-28.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var items = [Any]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        items = MockData.data()
        let url = "http://demo6427581.mockable.io/"
        Webservice<Animal>.fetch(urlString: url) { [weak self] (result) in
            switch result {
            case .success(let result):
                print(result.count)
                print(result)
                self?.items = result
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func registerCells() {
        let animalNib = UINib(nibName: "AnimalTableViewCellView", bundle: Bundle.main)
        let linkNib = UINib(nibName: "LinkTableViewCellView", bundle: Bundle.main)
        tableView.register(animalNib, forCellReuseIdentifier: "AnimalTableViewCell")
        tableView.register(linkNib, forCellReuseIdentifier: "LinkTableViewCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let object = items[indexPath.row]
        
//        if let object = object as? Link {
//            if let cell = tableView.dequeueReusableCell(withIdentifier: "LinkTableViewCell", for: indexPath) as? LinkTableViewCell {
//                cell.configure(object)
//                return cell
//            }
//        }
//
//        if let object = object as? Animal {
//            if let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as? AnimalTableViewCell {
//                cell.configure(object)
//                return cell
//            }
//        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Segue test"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailsViewController", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)

//        let object = items[indexPath.row]
//        if let object = object as? Animal {
//            let vc = DetailViewController.loadViewControllerFromStoryboard()
//            vc.animal = object
//            navigationController?.pushViewController(vc, animated: true)
//        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController {
            if let row = tableView.indexPathForSelectedRow?.row {
                let object = items[row] as! Animal
                destination.animal = object
            }
        }
    }
    
}

extension UIViewController {
    static func loadViewControllerFromStoryboard() -> Self  {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        return storyboard.instantiateViewController(identifier: String(describing: self)) as! Self
    }
}
