//
//  SecondViewController.swift
//  22_01_24_NavigationDemo
//
//  Created by Vishal Jagtap on 19/02/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var nameContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = nameContainer
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        
    }
}
