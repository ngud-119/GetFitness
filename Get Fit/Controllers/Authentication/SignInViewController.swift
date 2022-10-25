//
//  SignInViewConteroller.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 21/07/22.
//

import UIKit

class SignInViewController: UIViewController
{
    @IBOutlet weak var fitnessText: UILabel!
    @IBOutlet weak var fingertipsText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignInButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        errorLabel.alpha = 0 // Hiding erorr label
    }
    
    @IBAction func signInButtonTapped(_ sender: Any)
    {
        let text: String? = emailTextField.text
        let pass: String? = passwordTextField.text
        print("email is "+text!)
        print("Password is "+pass!)
        
    }

}

// MARK: Extension for dismissing keyboard when return is tapped.

extension SignInViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return false
    }
}


