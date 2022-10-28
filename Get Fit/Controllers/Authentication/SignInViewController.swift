//
//  SignInViewConteroller.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 21/07/22.
//

import UIKit
import FirebaseAuth // Imporing firebaseAuth module to perform necessary authentication process

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
    
    private func showError(_ message: String)
    {
        errorLabel.alpha = 1
        errorLabel.text = message
    }
    
    // Function for transitioning from sign in screen to workouts screen.
    private func transitionToWorkoutsScreen()
    {
        self.performSegue(withIdentifier: Storyboards.segues.SigninVCToTabBarView, sender: self)
        hideLoadingView() // Hide loading view when user signin succesfully.
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
        self.navigationItem.hidesBackButton = true // Hides Backbutton
        loadingView.alpha = 1 // Show loading view in signin viewcontroller.
        loadingView.showLoadingView(loadingMessage: "Signing you in...")
    }
    
    // Check the fields and validate that the data are correct. If everything is correct this methopd returns nil. Otherwise, it returns error message.
    func validateFields() -> String?
    {
        // Check if all fields are filled.
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "Please fill in all the fields!"
        }
        return nil
    }

    @IBAction func signInButtonTapped(_ sender: Any)
    {
        // Show loading screen
        showLoadingView()
        
        // Validate fields
        let error = validateFields()
        
        if error != nil
        {
           // There's is something with the fields.
           showError(error!)
           hideLoadingView() // Hide the loading view if something is wrong with fields.
        }
        
        // if all the fiedld are correct then.
        else
        {
            // Create cleaned versions of data
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Signing in the user
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                
                if error != nil
                {
                    // Unable to sign in
                    self.showError(error!.localizedDescription)
                    self.hideLoadingView() // Hide loading view if something went wrong while signing in.
                }
                
                // Successfully signed in user
                else
                {
                    self.transitionToWorkoutsScreen()
                }
            }
        }
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


