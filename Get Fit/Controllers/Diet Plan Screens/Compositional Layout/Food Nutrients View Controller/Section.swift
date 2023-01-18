//
//  Section.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 16/01/23.
//

import Foundation

/// Enum for storing different sections of FoodNutrientsCollectionView
enum Section
{
    case foodNutrientsSection([FoodNutrientsModel])
    case ingredientsSection([IngredientModel])
    case preparationStepsSection([PreparationDescription])
}
