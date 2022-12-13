//
//  RecipeDescription.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 13/12/22.
//

import Foundation

struct RecipeDescription: Codable
{
    var q: String
    var from: Int
    var to: Int
    var more: Bool
    var count: Int
    var hints: [Recipe]
}

struct Recipe
{
    var label: String
    var image: String
    var url: String
    var ingredients: [Ingredient]
    var totalTime: Int
    var totalNutrients: [Nutrient]
}

struct Ingredient
{
    var text: String
    var weight: Int
    var image: String
}

struct Nutrient
{
    var ENERC_CAL:Float
    var FAT: Float
    var PROCNT: Float
    var CHOCDF: Float
}



