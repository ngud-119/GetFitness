//
//  DietPlanViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 12/10/22.
//

import UIKit

var cardImageURL:[String] = [String]()
var foodName:[String] = [String]()
var foodQuantity:[String] = [String]()
var foodCalorie:[String] = [String]()

// Array for pupulating table view cells
var foodCardViewData = [FoodCardModel]()

// Food categoty
let foodCategoty = "Brunch"

// Task2: Implement Compositional Layout;
class DietPlanViewController: UIViewController
{
    
    @IBOutlet weak var foodItemTableView: UITableView!
    private var foodCardView = FoodCardCollectionViewCell()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
            DietPlanData.getRecipes(with: foodCategoty) { data in
                // Try to parse JSON data
                if let data = data
                {
                    do
                    {
                        // Decoded JSON Data
                        let recipes = try JSONDecoder().decode(RecipeDescription.self, from: data)
                        
                        
                        for recipe in recipes.hits
                        {
                            cardImageURL.append(recipe.recipe!.image!)
                            foodName.append(recipe.recipe!.label!)
                            foodQuantity.append("\(recipe.recipe!.totalWeight!)")
                            foodCalorie.append("\(recipe.recipe!.calories!)")
                        }
                        
                        // Populating TableView with API's data.
                        foodCardViewData.append(FoodCardModel(foodCategory: foodCategoty, cardImage: cardImageURL, foodName: foodName, foodQuantity: foodQuantity, foodCalorie: foodCalorie))
                        
                        // Reloading TableView after populating data fetched from API.
                        DispatchQueue.main.async
                        {
                            self.foodItemTableView.reloadData()
                        }
                        
                    }
                    catch
                    {
                        print("Error while parsing data -> \(error)")
                    }
                }
               
            }
            
    }
    
    // Do any additional setup after loading the view.
}

// Extension for TableView
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
