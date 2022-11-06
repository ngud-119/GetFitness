//
//  ProfileViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 04/10/22.
//

import UIKit
import FirebaseAuth // Importing FirebaseAuth Package to perform important authentication operation.

class ProfileViewController: UIViewController
{
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var editImageButton: UIButton!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    @IBOutlet weak var userEmail: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if let userData = Utilities.fetchUserData()
        {
            print(userData.userName,userData.mobileNumber,userData.email)
            updateProfileDetails(name: userData.userName, number: userData.mobileNumber, email: userData.email)
        }
        else
        {
            print("Error fetching user data!")
        }
        userImage.makeImageCircular()
    }
    
    // Methods for setting profile details.
    private func updateProfileDetails(name: String,number: String,email: String)
    {
        userName?.text = name
        userPhoneNumber?.text = number
        userEmail?.text = email
    }
    
    private func navigateToSignInVC()
    {
        let storyboard = UIStoryboard(name: Storyboards.Name.Main, bundle: nil)
        
        let signInSignUpViewController = storyboard.instantiateViewController(withIdentifier: Storyboards.VCID.SignInNavigationController)
        
        // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change Sign in navigation controller.
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(signInSignUpViewController)
    }
    
    @IBAction func signOutButtonTapped(_ sender: UIButton)
    {
        // Code for sign out user.
        let firebaseAuth = Auth.auth()
        
        do
        {
            try firebaseAuth.signOut()
            navigateToSignInVC()
        }
        
        catch let signOutError as NSError
        {
            print("Error signing out: %@", signOutError)
        }
        
    }
}
