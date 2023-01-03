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
    func getRecipes(with foodCategory: String, completion: @escaping (Data?) -> ())
    {
        // URL
        let url = URL(string: "https://edamam-recipe-search.p.rapidapi.com/search?q=\(foodCategory)")
        
        guard url != nil else
        {
            print("Error creating url object!")
            return
        }
        
        // URL Request
        var request = URLRequest(url: url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        
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
        
        // Create data task
        let dataTask = session.dataTask(with: request) { data, response, error in
            
            // Check for errors
            if error != nil
            {
                print(error.debugDescription)
            }
            
            // Passing the data from closure to the calling method
            else
            {
                completion(data)
            }
        }
        
        // Fire off the data
        dataTask.resume()
    }

}
