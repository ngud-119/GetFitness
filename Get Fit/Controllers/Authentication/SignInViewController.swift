//
//  SignInViewConteroller.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 21/07/22.
//

import UIKit

class SignInViewController: UIViewController,UITextFieldDelegate
{
    @IBOutlet weak var fitnessText: UILabel!
    @IBOutlet weak var fingertipsText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignInButton: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
    }
    
    @IBAction func signInButtonTapped(_ sender: Any)
    {
        var text: String? = emailTextField.text
        var pass: String? = passwordTextField.text
        print("email is "+text!)
        print("Password is "+pass!)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return false
    }
    
}


