//
//  Utilities.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 25/10/22.
//

import Foundation
// Struct for utiliy methods
struct Utilities
{
    // Utility function for checking for a valid and strong passord
    static func isPasswordValid(_ password : String) -> Bool
    {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
