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
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignInButton: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func signInButtonTapped(_ sender: Any)
    {
        print("Sign In button pressed")
    }
    
}


