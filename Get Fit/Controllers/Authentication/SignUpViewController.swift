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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.userName.delegate = self
        self.userMobileNumber.delegate = self
        self.userEmail.delegate = self
        self.password.delegate = self
        errorLabel.alpha = 0 // Hide error label
        
    }
    
    // Check the fields and validate that the data are correct. If everything is correct this methopd returns nil. Otherwise, it returns error message.
    func validateField() -> String?
    {
        // Check that all fields are filled in.
        if userName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || userMobileNumber.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || userEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "Please fill in all fields."
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
        self.performSegue(withIdentifier: Storyboards.segues.SignupVCToTabBarView, sender: self)
        print("Success")
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton)
    {
        // Validate the fields
        let error = validateField()
        
        if error != nil
        {
            // There's something wrong with fields.
            showError(error!)
        }
        
        // if all the fields are correct then
        else
        {
            // Create cleaned versions of data
            let userName = userName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
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
                }
                
                else
                {
                    // User created successfully, now store user data.
                    let db = Firestore.firestore().collection("users").addDocument(data: ["username":userName ,"mobile number": userMobileNumber,"uid":result!.user.uid]) { error in
                        
                        if error != nil
                        {
                            // Show error message
                            self.showError("Error saving users data")
                        }
                    }
                    
                    // Transition to the user
                    
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
