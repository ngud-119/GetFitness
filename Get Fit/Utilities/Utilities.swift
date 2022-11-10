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
    static func fetchUserData(getDataFromDatabase: @escaping ()-> Void)
    {
        getDataFromDatabase()
    }
    
}
