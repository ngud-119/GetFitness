//
//  NutrientsViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 16/10/22.
//

import UIKit

class NutrientsViewController: UIViewController
{

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var transparentLayer: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        foodImage.roundCorners(corners: [.bottomLeft,.bottomRight], radius: 40.0)
        transparentLayer.roundCorners(corners: [.bottomLeft,.bottomRight], radius: 40.0)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension UIImageView
{
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

