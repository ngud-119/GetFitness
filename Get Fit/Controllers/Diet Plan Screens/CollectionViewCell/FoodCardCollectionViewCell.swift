//
//  FoodCardCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 13/10/22.
//

import UIKit

class FoodCardCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var transparentImage: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodQuantityLabel: UILabel!
    @IBOutlet weak var calorieLabel: UILabel!
    
    
    public func configureFoodCard(cardImage: UIImage,foodNameLabel: String,foodQuantityLabel: String,calorieLabel: String)
    {
        self.cardImage.image = cardImage
        self.foodNameLabel.text = foodNameLabel
        self.foodQuantityLabel.text = foodQuantityLabel
        self.calorieLabel.text = calorieLabel
        makeCornerRounded()
    }
    // Make card image's corner rounded.
    private func makeCornerRounded()
    {
        cardImage.layer.cornerRadius = 10.0 // Make cell rounded
        cardImage.layer.borderWidth = 0.5 // Set a line along the border
        cardImage.layer.borderColor = UIColor.gray.cgColor // Set the color of border line
        transparentImage.layer.cornerRadius = 10.0 // Setting card image corner radius
    }
}
