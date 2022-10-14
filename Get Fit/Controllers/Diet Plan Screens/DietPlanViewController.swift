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
    FoodCardModel(foodCategory:DietPlan.foodCategoryTitle[0],cardImage: DietPlan.Breakfast.cardImage, foodName: DietPlan.Breakfast.foodName, foodQuantity: DietPlan.Breakfast.foodQuantity, foodCalorie: DietPlan.Breakfast.foodQuantity),
    
    // Data for Lunch section
    FoodCardModel(foodCategory:DietPlan.foodCategoryTitle[1],cardImage: DietPlan.Lunch.cardImage, foodName: DietPlan.Lunch.foodName, foodQuantity: DietPlan.Lunch.foodQuantity, foodCalorie: DietPlan.Lunch.foodQuantity),
    
    // Data for Dinner section
    FoodCardModel(foodCategory:DietPlan.foodCategoryTitle[2],cardImage: DietPlan.Breakfast.cardImage, foodName: DietPlan.Breakfast.foodName, foodQuantity: DietPlan.Breakfast.foodQuantity, foodCalorie: DietPlan.Breakfast.foodQuantity)
]

class DietPlanViewController: UIViewController
{

    @IBOutlet weak var foodItemTableView: UITableView!
    private var foodCardView = FoodCardCollectionViewCell()
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
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
