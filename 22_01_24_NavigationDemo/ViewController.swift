//
//  ViewController.swift
//  22_01_24_NavigationDemo
//
//  Created by Vishal Jagtap on 19/02/24.
//

import UIKit
//step 4. conform to protocol
class ViewController: UIViewController, BackDataPassing{

    @IBOutlet weak var nameTextField: UITextField!
    var extractedName : String?
    @IBOutlet weak var lastNameLabel: UILabel!
    var secondViewController : SecondViewController = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnMoveToSVC(_ sender: Any) {
        
        extractedName = self.nameTextField.text
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController.nameContainer = extractedName
        self.secondViewController.backDataPassDelegate = self   //step 6. assign delegate property ro self 
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    //step 5. implement function of protocol
    func passDataBack(lastName: String) {
        self.lastNameLabel.text = lastName
    }
}
