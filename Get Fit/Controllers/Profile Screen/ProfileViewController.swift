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
        userImage.makeImageCircular()
    }
    
    private func navigateToSignInVC()
    {
        // To be continued...
        
    }
    
    @IBAction func signOutButtonTapped(_ sender: UIButton)
    {
        // Code for sign out user.
        let firebaseAuth = Auth.auth()
        
        do
        {
            try firebaseAuth.signOut()
            navigateToSignInVC()
            print("User signout...")
        }
        catch let signOutError as NSError
        {
            print("Error signing out: %@", signOutError)
        }
        
    }
}
