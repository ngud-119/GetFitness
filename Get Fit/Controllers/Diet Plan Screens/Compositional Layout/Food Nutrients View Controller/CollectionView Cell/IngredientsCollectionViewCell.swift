//
//  IngredientsCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 16/01/23.
//

import UIKit

final class IngredientsCollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet weak var ingredientNameLabel: UILabel!
    
    @IBOutlet weak var IngredientImage: UIImageView!
    
    @IBOutlet weak var ingredientQuantityLabel: UILabel!
    
    static let identifier = "ingredientsCollectionViewCell"
    
    func setup()
    {
        // Code
    }
}
