//
//  FoodCardCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 13/10/22.
//
import UIKit
import Kingfisher

class FoodCardCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var transparentImage: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodQuantityLabel: UILabel!
    @IBOutlet weak var calorieLabel: UILabel!
    
    // Identifier for custom collection view cell.
    static let identifier = "foodCardCell"
    
    public func configureFoodCard(cardImageUrl: String,foodNameLabel: String,foodQuantityLabel: String,calorieLabel: String)
    {
        cardImage.kf.setImage(with: URL(string: cardImageUrl))
        self.foodNameLabel.text = foodNameLabel
        self.foodQuantityLabel.text = "Per Serving(\(String(format:"%.2f",foodQuantityLabel))"
        self.calorieLabel.text = "(\(String(format:"%.2f",foodQuantityLabel)) Kcal"
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
