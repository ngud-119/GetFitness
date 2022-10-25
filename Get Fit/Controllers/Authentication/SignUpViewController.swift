//
//  SignUpViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 21/07/22.
//

import UIKit

class SignUpViewController: UIViewController
{
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userMobileNumber: UITextField!
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.userName.delegate = self
        self.userMobileNumber.delegate = self
        self.userEmail.delegate = self
        self.password.delegate = self
        errorLabel.alpha = 0 // Hide error label
        
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton)
    {
        
    }
}

// MARK: Extension for dismissing keyboard when return is pressed.

extension SignUpViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return false
    }
}
