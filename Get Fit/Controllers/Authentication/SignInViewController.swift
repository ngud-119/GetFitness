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
    @IBOutlet weak var loadingView: LoadingView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        hideErrorMessage()
        hideLoadingView()
    }
    
    private func hideErrorMessage()
    {
        errorLabel.alpha = 0 // Hiding erorr label
    }
    
    private func hideLoadingView()
    {
        loadingView.alpha = 0 // Hiding loading view
    }
    
    public func showLoadingView()
    {
        loadingView.alpha = 1 // Show loading view in signin viewcontroller.
        loadingView.showLoadingView(loadingMessage: "Signing you in...")
    }
    
    @IBAction func signInButtonTapped(_ sender: Any)
    {
        let text: String? = emailTextField.text
        let pass: String? = passwordTextField.text
        showLoadingView()
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


