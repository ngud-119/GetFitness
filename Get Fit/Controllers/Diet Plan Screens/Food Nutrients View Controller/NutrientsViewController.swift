//
//  NutrientsViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 16/10/22.
//

import UIKit
import Kingfisher

// Array for populating food nutrients collection view cells.
var foodNutrientsData = [FoodNutrientsModel]()

// Array for populating ingredients nutrients collection view cells.
var foodIngredientsData = [IngredientModel]()



class NutrientsViewController: UIViewController
{
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak var foodName: UILabel!
    
    @IBOutlet weak var foodQuantitiy: UILabel!
    
    @IBOutlet weak var foodNutrientCollectionView: UICollectionView!
    @IBOutlet weak var ingredientsCollectionView: UICollectionView!
    @IBOutlet weak var preparationCollectionView: UICollectionView!
    
    @IBOutlet weak var containtsScrollView: UIScrollView!
    
    static let storyboardID = "nutrientsViewController"
    
    var foodImageURL: String = ""
    var name: String = ""
    var quantity: Double = 0
    
    var recipeNumber: Int = 0
    var foodCategory: String = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureAllViews()
        self.updateVC(imageURL: foodImageURL, foodNameLabel: name, foodQuantityLabel: quantity)
        
        // fetchData()
        
        
        
    }
    
    private func fetchData()
    {
        Task.init
        {
            let data = await DietPlanData.shared.getRecipesNutrients(foodCategory: foodCategory,recipeNumber: recipeNumber)
            
            let ingredients = await DietPlanData.shared.getRecipesIngredients(foodCategory: foodCategory, recipeNumber: recipeNumber)
            
            foodNutrientsData = data
            foodIngredientsData = ingredients
            
            DispatchQueue.main.async
            {
                self.foodNutrientCollectionView.reloadData()
                self.ingredientsCollectionView.reloadData()
            }
        
        }
    }
    private func configureAllViews()
    {
        foodImageView.image = UIImage(named: "Chocolate Oatmeal")
        containtsScrollView.contentInsetAdjustmentBehavior = .never
        foodImageView.layer.opacity = 0.60
        
        foodNutrientCollectionView.delegate = self
        foodNutrientCollectionView.dataSource = self
        
        ingredientsCollectionView.delegate = self
        ingredientsCollectionView.dataSource = self
        
        preparationCollectionView.delegate = self
        preparationCollectionView.dataSource = self
        
        // For self-sizing collection view cells for preparation collection view.
        let preparationcollectionFlowLayout = UICollectionViewFlowLayout()
        preparationcollectionFlowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        preparationCollectionView.collectionViewLayout = preparationcollectionFlowLayout
    }
    
    private func updateVC(imageURL: String,foodNameLabel: String,foodQuantityLabel: Double)
    {
        self.foodImageView.kf.setImage(with: URL(string: imageURL))
        self.foodName.text = foodNameLabel
        self.foodQuantitiy.text =  "\(String(format:"Per Serving(%.0f grams)",foodQuantityLabel))"
               
    }
    
}

// MARK: Extention for populating collection views.
extension NutrientsViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    // Setting number of cell.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        // Cell count for food nutrients collection view.
        if collectionView == self.foodNutrientCollectionView
        {
            // API Data
            // return foodNutrientsData.count
            
            // Mock Data
            return DietPlan.foodNutientsData.count
        }
        // Cell count for ingredients collection view.
        else if collectionView == self.ingredientsCollectionView
        {
            // API Data
            // return foodIngredientsData.count
            
            // Mock Data
            return DietPlan.foodIngredientsData.count
        }
        // Cell count for preparation collection view.
        else
        {
            // Mock Data
            return DietPlan.PreparationProcedure.steps.count
        }

    }

    // Populating data in the cells.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if collectionView == foodNutrientCollectionView
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodNutrientsCollectionViewCell.identifier, for: indexPath) as! FoodNutrientsCollectionViewCell
            
            // API Data
            // cell.configureCell(cellTitle: foodNutrientsData[indexPath.row].heading, foodQuantity: foodNutrientsData[indexPath.row].value, foodUnit: foodNutrientsData[indexPath.row].unit)
            
            // Mock Data
            cell.configureCell(cellTitle: DietPlan.foodNutientsData[indexPath.row].heading, foodQuantity: DietPlan.foodNutientsData[indexPath.row].value, foodUnit: DietPlan.foodNutientsData[indexPath.row].unit)
            
            return cell
        }
        else if collectionView == self.ingredientsCollectionView
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IngredientsCollectionViewCell.identifier, for: indexPath) as! IngredientsCollectionViewCell
            
            // API Data
            // cell.configure(foodName: foodIngredientsData[indexPath.row].ingredientName, foodImage: foodIngredientsData[indexPath.row].ingredientImage, foodQuantity: foodIngredientsData[indexPath.row].ingredientQuantity)
            
            // Mock Data
            cell.configure(foodName: DietPlan.foodIngredientsData[indexPath.row].ingredientName, foodImage: DietPlan.foodIngredientsData[indexPath.row].ingredientImage, foodQuantity: DietPlan.foodIngredientsData[indexPath.row].ingredientQuantity)
           
            return cell
        }
        else
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PreparationCollectionViewCell.identifier, for: indexPath) as! PreparationCollectionViewCell
            
            cell.configureList(countNumber: "\(indexPath.row + 1)", procedureText: DietPlan.PreparationProcedure.steps[indexPath.row])
            return cell
        }

    }
    
    // Setting size of cells.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == self.foodNutrientCollectionView
        {
            // return CGSize(width: 70.0 , height: 100.0)
            return CGSize(width: 80.0 , height: 55.0)
        }
        else if collectionView == self.ingredientsCollectionView
        {
            return .init(width: view.frame.width, height: 70)
        }
        else
        {
            return .init(width: view.frame.width, height: 30)
        }
   
       

  
    }
    
}
