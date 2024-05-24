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
        
        guard email != nil else {
            showAlert(message: "이메일을 입력해주세요")
            return
        }
        
        guard password != nil else {
            showAlert(message: "비밀번호를 입력해주세요")
            return
        }
    }
    
    func showAlert(message: String){
        let alertSheet = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "확인", style: .default)
        alertSheet.addAction(alertAction)
        
        present(alertSheet, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

