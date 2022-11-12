//
//  MethodsOfProfileVC.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 12/11/22.
//

import UIKit
import FirebaseStorage

// MARK: Extension for class methods

extension ProfileViewController
{
    // Function to upload image to firebase storage.
    func uploadProfileImage(profileImage: UIImage,getProfileImageDownloadURL: @escaping (_ url: URL?,_ error: Error?) -> Void)
    {
        // Generating a unique string for unique users profile image name.
        let imageName = NSUUID().uuidString
        
        // Reference of storage
        let storageRef = Storage.storage().reference().child("Profile_Images").child("\(imageName).png")
        
        // Upload image to storage
        if let uploadData = profileImage.pngData()
        {
            storageRef.putData(uploadData, metadata: nil) { (metadata, error) in
                
                if error != nil
                {
                    print("Error while uploading image \(error!.localizedDescription)")
                    return
                }
                
                print(metadata!)
                print("Image uploaded successfully.")
                
                storageRef.downloadURL { (url, error) in
                    
                    getProfileImageDownloadURL(url,error)
                    
                    // After uploading image, setting image url in users document.
                    Utilities.updateProfileURLWithDocumentID(documentId: self.userDocumentID, profileImageURL: self.profileImageURL)
                }
            }
        }
    }
    
    // Methods for setting profile details.
    func updateProfileDetails(name: String,number: String,email: String)
    {
        userName?.text = name
        userPhoneNumber?.text = number
        userEmail?.text = email
    }
    
    // Fills the text of labels with 'Loading Data...' to indicate data is being fetched from database.
    func showLoadingLabel()
    {
        userName.text = "Loading Data..."
        userPhoneNumber.text = "Loading Data..."
        userEmail.text = "Loading Data..."
        userName.layer.opacity = 0.5
        userPhoneNumber.layer.opacity = 0.5
        userEmail.layer.opacity = 0.5
    }
    
    func setLabelOpacityToOne()
    {
        userName.layer.opacity = 1
        userPhoneNumber.layer.opacity = 1
        userEmail.layer.opacity = 1
    }
    
    func navigateToSignInVC()
    {
        let storyboard = UIStoryboard(name: Storyboards.Name.Main, bundle: nil)
        
        let signInSignUpViewController = storyboard.instantiateViewController(withIdentifier: Storyboards.VCID.SignInNavigationController)
        
        // This is to get the SceneDelegate object from your view controller
        // then call the change root view controller function to change Sign in navigation controller.
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(signInSignUpViewController)
    }
}
