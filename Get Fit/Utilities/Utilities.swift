//
//  Utilities.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 25/10/22.
//

import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
// Class for utiliy methods
class Utilities
{
    // Utility function for checking for a valid and strong passord
    static func isPasswordValid(_ password : String) -> Bool
    {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    // Utility function for checking for a valid email
    static func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    static func fetchUserData() -> UserData?
    {
        

        let db = Firestore.firestore()
        
        db.collection("users").getDocuments { (querySnapshot,error) in
            
            var user:UserData = UserData(userName: "", mobileNumber: "", email: "")
            // Check for errors
            if let error = error
            {
                print("Error getting document \(error)")
            }
            
            else
            {
                let document = querySnapshot!.documents[1]
                let data = document.data()
                
                if let name = data["username"] as? String,let number = data["mobile number"] as? String,let emailAddress = data["userEmail"] as? String
                {
                    user = UserData(userName: name, mobileNumber: number, email: number)
                    
                    print(name)
                    print(number)
                    print(emailAddress)
    
                }
                else
                {
                    print("Error retriving data!")
                }
                
            }
            
        }
        return UserData(userName: "Apala Mahana", mobileNumber: "7608959767", email: "apalamahana@gmail.com")
    }
    
    static func sendUser(userName: String, mobileNumber: String, email: String) -> UserData
    {
        var user = UserData(userName: userName, mobileNumber: mobileNumber, email: email)
        return user
    }
}
