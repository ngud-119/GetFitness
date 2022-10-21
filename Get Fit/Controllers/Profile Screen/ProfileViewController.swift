//
//  ProfileViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 04/10/22.
//

import UIKit

class ProfileViewController: UIViewController
{
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        userImage.makeImageCircular()
    }
    
    
    @IBAction func signOutButtonTapped(_ sender: UIButton)
    {
        print("Signing out!!!")
    }
}
