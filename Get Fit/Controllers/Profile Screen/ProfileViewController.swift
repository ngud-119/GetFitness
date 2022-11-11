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
                        
                        if let name = document["username"] as? String,let number = document["mobile number"] as? String,let emailAddress = document["userEmail"] as? String,let uid = document["uid"] as? String
                        {
                            // Setting up the profile contents wrt to current user.
                            if uid == currentUserUid
                            {
                                self.setLabelOpacityToOne()
                                self.updateProfileDetails(name: name, number: number, email: emailAddress)
                            }
                        }
                        else
                        {
                            print("Error retriving data!")
                        }
                    }
            
                }
                
            }
        })
        
        userImage.makeImageCircular()
    }
    
    // Methods for setting profile details.
    private func updateProfileDetails(name: String,number: String,email: String)
    {
        userName?.text = name
        userPhoneNumber?.text = number
        userEmail?.text = email
    }
    
    // Fills the text of labels with 'Loading Data...' to indicate data is being fetched from database.
    private func showLoadingLabel()
    {
        userName.text = "Loading Data..."
        userPhoneNumber.text = "Loading Data..."
        userEmail.text = "Loading Data..."
        userName.layer.opacity = 0.5
        userPhoneNumber.layer.opacity = 0.5
        userEmail.layer.opacity = 0.5
    }
    private func setLabelOpacityToOne()
    {
        userName.layer.opacity = 1
        userPhoneNumber.layer.opacity = 1
        userEmail.layer.opacity = 1
    }
    private func navigateToSignInVC()
    {
        let storyboard = UIStoryboard(name: Storyboards.Name.Main, bundle: nil)
        
        let signInSignUpViewController = storyboard.instantiateViewController(withIdentifier: Storyboards.VCID.SignInNavigationController)
        
        // This is to get the SceneDelegate object from your view controller
        // then call the change root view controller function to change Sign in navigation controller.
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(signInSignUpViewController)
    }
    
    @IBAction func editButtonTapped(_ sender: UIButton)
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

// MARK: Extension for picking image from Photo's

extension ProfileViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    private func selectProfileImage()
    {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.allowsEditing = true
        
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        var selectedImageFromPicker: UIImage?
        
        if let editedImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage
        {
            selectedImageFromPicker = editedImage
        }
        
        else if let originalImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOrignalImage")] as? UIImage
        {
            selectedImageFromPicker = originalImage
        }
        
        if let selectedImage = selectedImageFromPicker
        {
            userImage.image = selectedImage
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        dismiss(animated: true, completion: nil)
    }
}
