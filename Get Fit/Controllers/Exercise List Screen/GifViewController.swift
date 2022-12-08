//
//  GifViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 08/12/22.
//

import UIKit
import Kingfisher // Library for getting image from web.

class GifViewController: UIViewController
{
    @IBOutlet weak var gif: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let gifURL : String = "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/5eeea355389655.59822ff824b72.gif"
        
        gif.kf.setImage(with: URL(string: gifURL)!)
        
    }
}

