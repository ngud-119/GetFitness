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
    
    static func fetchUserData(userUid: String) -> UserData?
    {
        var userName:String = ""
        var mobileNumber: String = ""
        var email: String = ""
        let currentUserUid = Auth.auth().currentUser?.uid
        
        let db = Firestore.firestore()
        
        //        db.collection("users").document(currentUserUid!).getDocument { Snapshot, error in
        //
        //            // Check for errors
        //            if let error = error
        //            {
        //                print("Error getting document \(error)")
        //            }
        //
        //            else
        //            {
        //                let username = Snapshot?.get("username")
        //                print(username)
        //            }
        //
        //        }
        db.collection("users").getDocuments { (querySnapshot,error) in
            
            // Check for errors
            if let error = error
            {
                print("Error getting document \(error)")
            }
            
            else
            {
                
                for document in querySnapshot!.documents
                {
                    let data = document.data()
                    let uids = document.documentID
                    if let userName = data["username"] as? String,let mobileNumber = data["mobile number"] as? String,let email = data["userEmail"] as? String
                    {
//                        userName = document.get("username") as! String
//                        mobileNumber = document.get("mobile number") as! String
//                        email = document.get("userEmail") as! String
                        print("Doc id :\(uids)")
                        print("User name :\(userName)")
                        print("Mobile number: \(mobileNumber)")
                        print("Email: \(email)")
                    }
                    
                }
                
            }
            
            
        }
        
        return nil
    }
}
