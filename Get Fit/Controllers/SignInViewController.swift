//
//  SignInViewConteroller.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 21/07/22.
//

import UIKit

class SignInViewController: UIViewController
{
    @IBOutlet weak var fitnessText: UILabel!
    @IBOutlet weak var fingertipsText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    
    @IBOutlet weak var SignInButton: UIButton!
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    @IBOutlet weak var SignUpForFreeButton: UIButton!
    
    let relativeFontConstant1: CGFloat = 0.12
    let relativeFontConstant2: CGFloat = 0.12
    let relativeFontConstant3: CGFloat = 0.05
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        fitnessText.font = fitnessText.font.withSize(self.view.frame.width * relativeFontConstant1)
        
        fingertipsText.font = fingertipsText.font.withSize(self.view.frame.width * relativeFontConstant2)
        
        descriptionText.font = descriptionText.font.withSize(self.view.frame.width * relativeFontConstant3)
        
    }
    
    @IBAction func signInButtonTapped(_ sender: Any)
    {
        print("Sign In button pressed")
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any)
    {
        print("Sign Up button pressed")
    }
    
    @IBAction func signUpForFreeButtonTapped(_ sender: Any)
    {
        print("Sign Up for free button pressed")
    }
    
}


