//
//  ViewController.swift
//  22_01_24_NavigationDemo
//
//  Created by Vishal Jagtap on 19/02/24.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var nameTextField: UITextField!
    var extractedName : String?
    var secondViewController : SecondViewController = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnMoveToSVC(_ sender: Any) {
        
        extractedName = self.nameTextField.text
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController.nameContainer = extractedName
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
