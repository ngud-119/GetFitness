//
//  CollectionReusableView.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 08/01/23.
//

import UIKit

/// Class for custom header view for FoodNutrientsViewController.
class HeaderImageReusableView: UICollectionReusableView
{
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var transparentLayer: UIImageView!

    static let identifier = "HeaderImageReusableView"
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        self.backgroundColor = .red
        setImage(image: "Chocolate Oatmeal")
        
        
    }
    
    private func setImage(image: String)
    {
        if let unwrapedImage = UIImage(named: image)
        {
            self.foodImage.image = unwrapedImage
        }
    }
    
    required init?(coder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
}
