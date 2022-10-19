//
//  ingredientsCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 19/10/22.
//

import UIKit

class IngredientsCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodQuantitiy: UILabel!
    
    public func configure(foodName: String,foodImage: UIImage,foodQuantity: String)
    {
        self.foodName.text = foodName
        self.foodImage.image = foodImage
        self.foodQuantitiy.text = foodQuantity
        self.foodImage.makeImageCircular()
    }
    
}
