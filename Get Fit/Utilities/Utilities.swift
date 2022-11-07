//
//  Utilities.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 25/10/22.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

// Class for Utility methods
class Utilities
{

    // Utility function for checking for a valid and strong passord
    static func isPasswordValid(_ password : String) -> Bool
    {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    // Utility function for checking for a valid email
    static func isValidEmail(_ email: String) -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    // Utility function for fetching data from firestore database.
    static func fetchUserData() -> UserData?
    {
        var userName = "user"
        var userMobileNumber = "12234"
        var userEmail = "1@2.com"
        
        let db = Firestore.firestore()
        db.collection("users").getDocuments { (querySnapshot,error) in
            
            // Check for errors
            if let error = error
            {
                print("Error getting document \(error)")
            }
            
            else
            {
                let document = querySnapshot!.documents[0]
                let data = document.data()
                
                if let name = data["username"] as? String,let number = data["mobile number"] as? String,let emailAddress = data["userEmail"] as? String
                {
                   userName = name
                   userMobileNumber = number
                   userEmail = emailAddress
                }
                else
                {
                    print("Error retriving data!")
                }
                
            }
        }
        
     return UserData(userName: userName, mobileNumber: userMobileNumber, email: userEmail)
    }
    
}
