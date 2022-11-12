//
//  SignUpViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 21/07/22.
//

import UIKit
import FirebaseAuth // importing required classes and methods for creating users.
import FirebaseFirestore // importing require classes and methods to store user data.

class SignUpViewController: UIViewController
{
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userMobileNumber: UITextField!
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loadingView: LoadingView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.userName.delegate = self
        self.userMobileNumber.delegate = self
        self.userEmail.delegate = self
        self.password.delegate = self
        hideErrorMessage() // Hide Error message
        hideLoadingView() // Hide Loading view
    }
    
    private func hideErrorMessage()
    {
        errorLabel.alpha = 0 // Hide error label
    }
    
    private func hideLoadingView()
    {
        loadingView.alpha = 0 // Hide loading View
    }
    
    private func showLoadingView()
    {
        self.navigationItem.hidesBackButton = true // Hide back button
        loadingView.alpha = 1
        loadingView.showLoadingView(loadingMessage: "Signing Up...")
    }
    // Check the fields and validate that the data are correct. If everything is correct this methopd returns nil. Otherwise, it returns error message.
    func validateField() -> String?
    {
        // Check that all fields are filled in.
        if userName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || userMobileNumber.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || userEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "Please fill in all fields."
        }
        // Check if email is valid.
        let cleanedEmail = userEmail.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isValidEmail(cleanedEmail) == false
        {
            // Email is not valid
            return "Please enter a valid email."
        }
        // Check if the password is secure.
        let cleanedPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false
        {
            // Password is not secure enough.
            
            return "Please make sure your password is atleast 8 characters, contains a special character and a number."
        }
        
        return nil
    }
    
    // Method for showing error
    func showError(_ message: String)
    {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    // Function for transitioning from sign up screen to workouts screen.
    func transitionToWorkoutsScreen()
    {
        // after sign up is done, maybe put this in the signup web service completion block
        let storyboard = UIStoryboard(name: Storyboards.Name.TabBar, bundle: nil)
        let mainTabBarController = storyboard.instantiateViewController(identifier: Storyboards.VCID.TabBarController)
        
        // This is to get the SceneDelegate object from your view controller
        // then call the change root view controller function to change to main tab bar
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainTabBarController)
        
        hideLoadingView() // Hide loading view when user signed up succesfully.
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton)
    {
        // Show Loading screen
        showLoadingView()
        
        // Validate the fields
        let error = validateField()
        
        if error != nil
        {
            // There's something wrong with fields.
            showError(error!)
            hideLoadingView() // Hide loading view if user not filled field properly.
        }
        
        // if all the fields are correct then
        else
        {
            // Create cleaned versions of data
            let userName = userName.text!
            let userMobileNumber = userMobileNumber.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let userEmail = userEmail.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Create the user
            Auth.auth().createUser(withEmail: userEmail, password: password) { result, err in
                
                // check for errors
                if err != nil
                {
                    // There was an error creating user
                    self.showError("Error creating user")
                    self.hideLoadingView() // Hide loading view when something went wrong while creating user.
                }
                
                else
                {
            
                    // User created successfully, now store user data.
                    Firestore.firestore().collection("users").addDocument(data: ["username":userName ,"mobile number": userMobileNumber,"userEmail":userEmail,"uid":result!.user.uid,"profileImageURL":""]) { error in
                        
                        if error != nil
                        {
                            // Show error message
                            self.showError("Error saving users data")
                            self.hideLoadingView() // Hide loading view if there is error saving data.
                        }
                    }
                    
                    // Transition user to tab bar controller.
                    self.transitionToWorkoutsScreen()
                    
                }
            }
            
            
        }
        
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
