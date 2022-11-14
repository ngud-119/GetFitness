//
//  ProfileViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 04/10/22.
//

import UIKit
import FirebaseFirestore
import FirebaseCore
import FirebaseAuth // Importing FirebaseAuth Package to perform important authentication operation.
import FirebaseStorage

class ProfileViewController: UIViewController
{
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var addPhotoButton: UIButton!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    
    var userDocumentID: String = ""
    var profileImageURL: String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        showLoadingLabel()
        
        Utilities.fetchUserData(getDataFromDatabase: {
            
            Firestore.firestore().collection("users").getDocuments { querySnapshot, error in
                
                // Check for errors
                if let error = error
                {
                    print("Error getting document \(error)")
                }
                
                else
                {
                    let currentUserUid = Auth.auth().currentUser!.uid
                    for document in querySnapshot!.documents
                    {
                        
                        if let name = document["username"] as? String,let number = document["mobile number"] as? String,let emailAddress = document["userEmail"] as? String,let uid = document["uid"] as? String, let profileImageURL = document["profileImageURL"] as? String
                        {
                            // Setting up the profile contents wrt to current user.
                            if uid == currentUserUid
                            {
                                self.userDocumentID = document.documentID
                                self.setLabelOpacityToOne()
                                self.downloadProfileImage(profileImageURL: profileImageURL ) { data, response, error in
                                    
                                    // Something went wrong while downloading.
                                    if error != nil
                                    {
                                        print(error!.localizedDescription)
                                        return
                                    }
                                    // Setting the image as profile image which was recieved from database
                                    DispatchQueue.main.async
                                    {
                                        self.userImage.image = UIImage(data: data!)
                                    }
                                    
                                }
                                self.updateProfileDetails(name: name, number: number, email: emailAddress)
                            }
                        }
                        else
                        {
                            print(error?.localizedDescription ?? "Successfully retrived data.")
                        }
                    }
                    
                }
                
            }
        })
        
        userImage.makeImageCircular()
    }
    
    @IBAction func addPhotoTapped(_ sender: UIButton)
    {
        selectProfileImage()
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
