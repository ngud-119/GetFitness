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
        static let cardImage: [UIImage] = [UIImage(named: "Chocolate Oatmeal")!,UIImage(named: "Mustard Chicken")!,UIImage(named: "Tandoori Chicken")!]
        static let foodName: [String] = ["Chocolate Oats","Mustard Chicken","Chicken Tandoori"]
        static let foodQuantity: [String] = ["1 cup(120 grams)","Per Serving(200 grams)","Per Serving(220 grams)"]
        static let foodCalories: [String] = ["120 Kcal","220 Kcal","280 Kcal"]
    }
    
    struct Dinner
    {
        static let cardImage: [UIImage] = [UIImage(named: "Chocolate Oatmeal")!,UIImage(named: "Mustard Chicken")!,UIImage(named: "Tandoori Chicken")!]
        static let foodName: [String] = ["Chocolate Oats","Mustard Chicken","Chicken Tandoori"]
        static let foodQuantity: [String] = ["1 cup(120 grams)","Per Serving(200 grams)","Per Serving(220 grams)"]
        static let foodCalories: [String] = ["120 Kcal","220 Kcal","280 Kcal"]
    }
    
}
