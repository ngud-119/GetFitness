//
//  FoodNutrientsCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 27/01/23.
//

import UIKit

/// Class custom collection view cell
class FoodNutrientsCollectionViewCell: UICollectionViewCell
{
    static let identifier = "foodNutrientsCollectionViewCell"
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var amount: UILabel!
    
    @IBOutlet weak var unit: UILabel!
    
    public func configureCell(cellTitle: String,foodQuantity: Double,foodUnit: String)
    {
        self.title.text = cellTitle
        self.amount.text = "\(foodQuantity)"
        self.unit.text = foodUnit
    }
}
