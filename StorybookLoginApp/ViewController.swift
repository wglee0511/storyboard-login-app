//
//  ViewController.swift
//  StorybookLoginApp
//
//  Created by racoon on 5/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var warningLabel: UILabel!
    @IBAction func loginButtonAction(_ sender: Any) {
        let email = emailField.text
        let password = passwordField.text
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

