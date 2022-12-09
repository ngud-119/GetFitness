//
//  GifViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 08/12/22.
//

import UIKit
import Kingfisher // Library for getting gif from web.

class GifViewController: UIViewController
{
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var targetMuscle: UILabel!
    @IBOutlet weak var equipment: UILabel!
    @IBOutlet weak var gif: UIImageView!
    
    var name = ""
    var muscle = ""
    var equipmentType = ""
    override func viewDidLoad()
    {
        super.viewDidLoad()
        gif.roundCorners(corners:UIRectCorner.allCorners, radius: 5)
        exerciseName.text = name
        targetMuscle.text = "Target Muscle: \(muscle)"
        equipment.text = "Equipment: \(equipmentType)"
        let gifURL : String = "https://gymvisual.com/img/p/1/9/7/9/9/19799.gif"
        
        gif.kf.setImage(with: URL(string: gifURL)!)
        
    }
    
}

