//
//  SecondViewController.swift
//  22_01_24_NavigationDemo
//
//  Created by Vishal Jagtap on 19/02/24.
//

import UIKit
//step 1 : Creating Protocol
protocol BackDataPassing{
    func passDataBack(lastName : String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var nameContainer : String?
    @IBOutlet weak var lastNametextField: UITextField!
    
    var backDataPassDelegate : BackDataPassing?     //step 2 : create property of protocol -- which is delegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = nameContainer
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        var extractedLastName = self.lastNametextField.text
        guard let delegate1 = backDataPassDelegate else { return }
        
        delegate1.passDataBack(lastName: extractedLastName!)    //3. pass data
        self.navigationController?.popViewController(animated: true)
    }
}
