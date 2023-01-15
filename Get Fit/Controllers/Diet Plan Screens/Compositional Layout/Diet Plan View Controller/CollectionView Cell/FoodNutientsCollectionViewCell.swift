//
//  FoodNutientsCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 10/01/23.
//

import UIKit

/// Custom cell for food nutrients collection view cell section.
class FoodNutientsCollectionViewCell: UICollectionViewCell
{
    /// Reusable identifier for collection view cell.
    static let identifier = "foodNutrientsCollectionViewCell"
    
    @IBOutlet weak var headingTitle: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBOutlet weak var unitLabel: UILabel!
    
    /// Function to populate the section.
    /// This method will populate collection view
    public func configure(title: String,quantity: String,unit: String)
    {
        // Fatal Error: found nil while unwraping optionals.
        // Error was due to same name of collection view cell class and reusable identifier.
        self.headingTitle.text = title
        self.quantityLabel.text = quantity
        self.unitLabel.text = unit
    }
}
