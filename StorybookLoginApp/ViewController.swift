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
        let email = emailField.text ?? ""
        let password = passwordField.text ?? ""
        
        guard !email.isEmpty else {
            showAlert(message: "이메일을 입력해주세요")
            return
        }
        
        guard !password.isEmpty else {
            showAlert(message: "비밀번호를 입력해주세요")
            return
        }
        
        
    }
    
    func setTextFieldInitialStyle(
        textFieldValue: UITextField,
        placeholder: String
    ) {
        textFieldValue.placeholder = placeholder
        textFieldValue.layer.borderColor = UIColor.systemGray3.cgColor
        textFieldValue.layer.borderWidth = 1
        textFieldValue.layer.cornerRadius = 5
    }
    
    func showAlert(message: String){
        let alertSheet = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "확인", style: .default)
        alertSheet.addAction(alertAction)
        
        present(alertSheet, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextFieldInitialStyle(textFieldValue: emailField, placeholder: "이메일을 입력해주세요")
        setTextFieldInitialStyle(textFieldValue: passwordField, placeholder: "비밀번호를 입력해주세요")
        
        emailField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case emailField:
            let countText = textField.text?.count ?? 0
            let isValid = (6 ... 12).contains(countText)
            
            textField.layer.borderColor = isValid ? UIColor.systemGray3.cgColor : UIColor.red.cgColor
            textField.tintColor = .red
            
            return isValid
        default:
            return true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
        case emailField:
            passwordField.becomeFirstResponder()
        case passwordField:
            loginButtonAction(self)
        default:
            break
        }
        
        return false
    }
}
