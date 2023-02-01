//
//  FoodCardModel.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 14/10/22.
//

import UIKit

/// Struct for storing data for a recipe.
struct FoodCardModel
{
    /// For Diet Plan View Controller's (Food Card Collection View).
    var foodCategory: String
    var cardImage: [String]
    var foodName: [String]
    var foodQuantity: [Double]
    var foodCalorie: [Double]

}
