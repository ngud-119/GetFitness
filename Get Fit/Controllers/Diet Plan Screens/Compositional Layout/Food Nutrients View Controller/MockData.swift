//
//  MockData.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 17/01/23.
//

import Foundation

/// Mock data for FoodNutrientsCollectionView
struct MockData
{
    /// Instance of MockData.
    static let shared = MockData()
    
    let foodNutrients: [FoodNutrientsModel] =
    
    [
        FoodNutrientsModel(heading: "prep time", value: "10", unit: "Min"),
        FoodNutrientsModel(heading: "Carbs", value: "80.6", unit: "g"),
        FoodNutrientsModel(heading: "Fat", value: "20.2", unit: "g"),
        FoodNutrientsModel(heading: "Protein", value: "19.2", unit: "g")
        
    ]
    
    let foodIngredients: [IngredientModel] =
    
    [
          IngredientModel(ingredientName: "oats", ingredientImage: "oats", ingredientQuantity: "1 cup"),
          IngredientModel(ingredientName: "Cocoa Powder", ingredientImage: "Cocoa powder", ingredientQuantity: "2-3 tbsp"),
          
          IngredientModel(ingredientName: "Honey", ingredientImage: "Honey", ingredientQuantity: "5-6 tbsp"),
          
          IngredientModel(ingredientName: "Milk", ingredientImage: "milk", ingredientQuantity: "1 cup"),
          IngredientModel(ingredientName: "Flax Seed", ingredientImage: "Flax Seed", ingredientQuantity: "1-2 tbsp")
    ]
    
    
}
