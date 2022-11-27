//
//  ExerciseList.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 26/11/22.
//

// Class for getting data from API for exercise list view controller.
import UIKit

class ExerciseListData
{
    static func getExerciseWithBodyPart(bodyPart: String)
    {
        // URL
        let url = URL(string: "https://exercisedb.p.rapidapi.com/exercises/bodyPart/\(bodyPart)")
        
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
            "X-RapidAPI-Host": "exercisedb.p.rapidapi.com"
        ]
        
        request.allHTTPHeaderFields = headers

        // Specify the body
        
        // Set the request type
        request.httpMethod = "GET"
        
        // Get the URLSession
        let session = URLSession.shared
        
        // Create data task
        let dataTask = session.dataTask(with: request) { data, response, error in
            
            // Check for errors
            if error == nil && data != nil
            {
                let decoder = JSONDecoder()
                // Try to parse JSON data
                if let data = data
                {
                    do
                    {
                        let exerciseList = try decoder.decode([ExerciseDescription].self, from: data)
                        print(exerciseList)
                    }
                    catch
                    {
                        print(error.localizedDescription)
                    }
                }
            }
        }
        
        // Fire off the data
        dataTask.resume()
    }
}

