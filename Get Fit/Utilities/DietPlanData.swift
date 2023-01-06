//
//  DietPlanData.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 13/12/22.
//

import UIKit

/// Class for getting data for food card cell.
class DietPlanData
{
    /// Instance for invoking class methods.
    static let shared = DietPlanData()
    
    /// Function for getting data for populating diet plan VC.
    public func getRecipes(foodCategory: String) async -> FoodCardModel
    {
        var cardImageURL:[String] = [String]()
        var foodName:[String] = [String]()
        var foodQuantity:[Double] = [Double]()
        var foodCalorie:[Double] = [Double]()
        
        var foodCardData = FoodCardModel(foodCategory: "", cardImage: [], foodName: [], foodQuantity: [], foodCalorie: [])

        // URL
        let url = URL(string: "https://edamam-recipe-search.p.rapidapi.com/search?q=\(foodCategory)")
        
        guard let url = url else
        {
            print("Error creating url object!")
            return FoodCardModel(foodCategory: "", cardImage: [], foodName: [], foodQuantity: [], foodCalorie: [])
        }
        
        // URL Request
        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        
        // Specify the header
        let headers = [
            "X-RapidAPI-Key": "541dd37637msh5d41896e86719efp19da0ejsn8c426b6b0b58",
            "X-RapidAPI-Host": "edamam-recipe-search.p.rapidapi.com"
        ]
        request.allHTTPHeaderFields = headers
        
        // Set the request type
        request.httpMethod = "GET"
        
        // Get the URLSession
        let session = URLSession.shared
        
        do
        {
            let (data, _) = try await session.data(for: request)
            let recipes = try JSONDecoder().decode(RecipeDescription.self, from: data)
            
            for recipe in recipes.hits
            {
                cardImageURL.append(recipe.recipe!.image!)
                foodName.append(recipe.recipe!.label!)
                foodQuantity.append(recipe.recipe!.totalWeight!)
                foodCalorie.append(recipe.recipe!.calories!)
                
            }
            
            foodCardData.cardImage = cardImageURL
            foodCardData.foodName = foodName
            foodCardData.foodQuantity = foodQuantity
            foodCardData.foodCalorie = foodCalorie
            
            return foodCardData
        }
        
        catch
        {
            return FoodCardModel(foodCategory: "", cardImage: [], foodName: [], foodQuantity: [], foodCalorie: [])
        }
         
    }
}
