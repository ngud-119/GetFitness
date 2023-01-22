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
    // @IBOutlet weak var foodName: UILabel!
    // @IBOutlet weak var foodQuantitiy: UILabel!
    
    static let identifier = "headerImageReusableView"
   
    // Header image view
    let foodImageView = {

        let foodImage = UIImageView(image: UIImage(named: "Chocolate Oatmeal"))
        foodImage.contentMode = .scaleAspectFill
        foodImage.layer.opacity = 0.60
        return foodImage

    }()
    
    // Food Name Label
    let foodName: UILabel = {
        
        let label = UILabel()
        label.frame = CGRect(x: 30, y: 320, width: 350, height: 50)
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        // label.backgroundColor = .red
        label.text = "Chocolate Oatmeal"
        
        return label
    }()
    
    // Food Quantity
    let foodQuantity: UILabel = {
        
        let label = UILabel()
        label.frame = CGRect(x: 30, y: 360, width: 350, height: 30)
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        // label.backgroundColor = .systemPink
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "1 cup(120 grams)"
        
        return label
    }()
    
    
    override init(frame: CGRect)
    {
        
        super.init(frame: frame)
        addSubview(foodImageView)
        addSubview(foodName)
        addSubview(foodQuantity)
        foodImageView.fillSuperview()
        
    }
    
    /// Configure header with image, food name and food quantity.
    public func configureHeader(imageName: String, name: String, quantity: String)
    {
        if let unwrapedImage = UIImage(named: imageName)
        {
            foodImageView.image = unwrapedImage
        }
        foodName.text = name
        foodQuantity.text = quantity
    }
    required init?(coder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
}
