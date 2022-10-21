//
//  DietPlan.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 13/10/22.
//

import UIKit

struct DietPlan
{
    static let foodCategoryTitle: [String] = ["BreakFast","Lunch","Dinner"]
    
    struct Breakfast
    {
        static let cardImage: [UIImage] = [UIImage(named: "Chocolate Oatmeal")!,UIImage(named: "Eggs")!,UIImage(named: "Omelette")!]
        static let foodName: [String] = ["Chocolate Oats","Boiled Eggs","Omelette"]
        static let foodQuantity: [String] = ["1 cup(120 grams)","Per Serving(3 nos)","Per Serving(122 grams)"]
        static let foodCalories: [String] = ["460 Kcal","225 Kcal","225 Kcal"]
    }
    
    struct Lunch
    {
        static let cardImage: [UIImage] = [UIImage(named: "Curd Rice")!,UIImage(named: "Mustard Chicken")!,UIImage(named: "Tandoori Chicken")!]
        static let foodName: [String] = ["Curd Rice","Mustard Chicken","Chicken Tandoori"]
        static let foodQuantity: [String] = ["1 cup(120 grams)","Per Serving(200 grams)","Per Serving(220 grams)"]
        static let foodCalories: [String] = ["130 Kcal","220 Kcal","280 Kcal"]
    }
    
    struct Dinner
    {
        static let cardImage: [UIImage] = [UIImage(named: "Fish Curry")!,UIImage(named: "Biryani")!,UIImage(named: "Chicken Curry")!]
        static let foodName: [String] = ["Fish Curry","Veg Biryani","Chicken Curry"]
        static let foodQuantity: [String] = ["1 cup(120 grams)","Per Serving(200 grams)","Per Serving(220 grams)"]
        static let foodCalories: [String] = ["300 Kcal","220 Kcal","290 Kcal"]
    }
    
    struct Ingredients
    {
        static let foodName: [String] = ["Oats","Cocoa Powder","Honey","Milk","Flax Seed"]
        
        static let foodImage: [UIImage] = [UIImage(named: "Oats")!,UIImage(named: "Cocoa Powder")!,UIImage(named: "Honey")!,UIImage(named: "Milk")!,UIImage(named: "Flaxseeds")!]
        
        static let foodQuantity: [String] = ["1 cup","2-3 tbsp","5-6 tbsp","1 cup","2-3 tbsp"]
    }
    
    struct PreparationProcedure
    {
        static let steps: [String] =
        [
           "Combine all ingredients in a small pot.",
           "Transfer the pot to a stove. Cook over medium heat, stirring frequently, until thick and creamy. This should take about 6-8 minutes. Stir the oatmeal often to prevent it from sticking to the bottom of the pot.",
           "Transfer oatmeal to bowl(s). Add your favorite toppings. Enjoy!"
        
        ]
    }
    
}
