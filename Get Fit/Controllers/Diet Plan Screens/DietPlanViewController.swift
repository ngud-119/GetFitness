//
//  DietPlanViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 12/10/22.
//

import UIKit

// Array for pupulating table view cells
var foodCardViewData: [FoodCardModel] =
[
    // Data for Breakfast section
    FoodCardModel(foodCategory:DietPlan.foodCategoryTitle[0],cardImage: DietPlan.Breakfast.cardImage, foodName: DietPlan.Breakfast.foodName, foodQuantity: DietPlan.Breakfast.foodQuantity, foodCalorie: DietPlan.Breakfast.foodCalories),
    
    // Data for Lunch section
    FoodCardModel(foodCategory:DietPlan.foodCategoryTitle[1],cardImage: DietPlan.Lunch.cardImage, foodName: DietPlan.Lunch.foodName, foodQuantity: DietPlan.Lunch.foodQuantity, foodCalorie: DietPlan.Lunch.foodCalories),
    
    // Data for Dinner section
    FoodCardModel(foodCategory:DietPlan.foodCategoryTitle[2],cardImage: DietPlan.Dinner.cardImage, foodName: DietPlan.Dinner.foodName, foodQuantity: DietPlan.Dinner.foodQuantity, foodCalorie: DietPlan.Dinner.foodCalories)
]

// For storing food

class DietPlanViewController: UIViewController
{
    
    @IBOutlet weak var foodItemTableView: UITableView!
    private var foodCardView = FoodCardCollectionViewCell()
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        DietPlanData.getRecipes(with: "Drinks") { data in
            
            let decoder = JSONDecoder()
            // Try to parse JSON data
            if let data = data
            {
                do
                {
                    // Decoded JSON Data
                    let recipes = try decoder.decode([RecipeDescription].self, from: data)
                    
                    print(recipes)
                }
                catch
                {
                    print("Error while parsing data ->\(error)")
                }
            }
            
        }
        
    }
    
    // Do any additional setup after loading the view.
}

extension DietPlanViewController: UITableViewDelegate,UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return foodCardViewData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 245.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return foodCardViewData[section].foodCategory
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.textColor = UIColor.white
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        header.textLabel?.frame = header.bounds
        header.textLabel?.textAlignment = .natural
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? FoodItemTableViewCell
                
        else
        {
            fatalError("Unable to create tableview cell")
        }
        
        // For setting title for food category.
        // cell.foodCategory.text = DietPlan.foodCategoryTitle[indexPath.row]
        
        cell.foodCardCollectionView.tag = indexPath.section
        
        return cell
    }
    
}
