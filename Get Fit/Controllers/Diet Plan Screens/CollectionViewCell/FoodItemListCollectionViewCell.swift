//
//  FoodItemListCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 20/10/22.
//

import UIKit

class FoodItemListCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodQuantity: UILabel!
    
    public func configure(foodName: String,foodImage: UIImage,foodQuantity: String)
    {
        self.foodName?.text = foodName
        self.foodImage?.image = foodImage
        self.foodQuantity?.text = foodQuantity
        self.foodImage?.makeImageCircular()
    }
}
