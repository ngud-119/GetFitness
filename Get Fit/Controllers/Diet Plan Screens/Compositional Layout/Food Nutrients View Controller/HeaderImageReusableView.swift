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
    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var transparentLayer: UIImageView!

    static let identifier = "HeaderImageReusableView"
    
    let foodImageView: UIImageView = {
        
        let foodImage = UIImageView(image: UIImage(named: "Chocolate Oatmeal"))
        foodImage.contentMode = .scaleAspectFill
        foodImage.layer.opacity = 0.60
        return foodImage
        
    }()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        addSubview(foodImageView)
        foodImageView.fillSuperview()
        
    }
    
    func setCornerRadius()
    {
        
    }
    
    required init?(coder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
}
