//
//  IngredientsCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 27/01/23.
//

import UIKit

/// Custom class for IngredientsCollectionViewCell.
final class IngredientsCollectionViewCell: UICollectionViewCell
{
   static let identifier = "ingredientsCollectionViewCell"
    
    @IBOutlet weak private var foodName: UILabel!
    @IBOutlet weak private var foodImage: UIImageView!
    @IBOutlet weak private var foodQuantity: UILabel!
    
    public func configure(foodName: String,foodImage: UIImage,foodQuantity: String)
    {
        self.foodName?.text = foodName
        self.foodImage?.image = foodImage
        self.foodQuantity?.text = foodQuantity
        self.foodImage?.makeImageCircular()
    }
}
