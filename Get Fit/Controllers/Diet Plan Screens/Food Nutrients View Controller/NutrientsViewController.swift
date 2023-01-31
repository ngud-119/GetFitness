//
//  NutrientsViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 16/10/22.
//

import UIKit

class NutrientsViewController: UIViewController
{

    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodNutrientCollectionView: UICollectionView!
    @IBOutlet weak var ingredientsCollectionView: UICollectionView!
    @IBOutlet weak var preparationCollectionView: UICollectionView!

   @IBOutlet weak var containtsScrollView: UIScrollView!

   static let storyboardID = "nutrientsViewController"
   override func viewDidLoad()
    {
        super.viewDidLoad()
        foodImageView.image = UIImage(named: "Chocolate Oatmeal")
        containtsScrollView.contentInsetAdjustmentBehavior = .never
        foodImageView.layer.opacity = 0.60

        foodNutrientCollectionView.delegate = self
        foodNutrientCollectionView.dataSource = self

        ingredientsCollectionView.delegate = self
        ingredientsCollectionView.dataSource = self
        
        preparationCollectionView.delegate = self
        preparationCollectionView.dataSource = self
        
        let collectionFlowLayout = UICollectionViewFlowLayout()
                collectionFlowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
                preparationCollectionView.collectionViewLayout = collectionFlowLayout

       

       // Do any additional setup after loading the view.
    }
}

extension NutrientsViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        // Cell count for food nutrients collection view.
        if collectionView == self.foodNutrientCollectionView
        {
            return 10
        }
        // Cell count for ingredients collection view.
        else if collectionView == self.ingredientsCollectionView
        {
            return 10
        }
        // Cell count for preparation collection view.
        else
        {
            return DietPlan.PreparationProcedure.steps.count
        }

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if collectionView == foodNutrientCollectionView
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodNutrientsCollectionViewCell.identifier, for: indexPath) as! FoodNutrientsCollectionViewCell
            cell.configureCell(cellTitle: "prep time", foodQuantity: 80.0, foodUnit: "g")
           
            return cell
        }
        else if collectionView == self.ingredientsCollectionView
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IngredientsCollectionViewCell.identifier, for: indexPath) as! IngredientsCollectionViewCell

            if let image = UIImage(named: "Chocolate Oatmeal")
            {
                cell.configure(foodName: "Oats", foodImage: image, foodQuantity: "8")
            }
    
            return cell
        }
        else
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PreparationCollectionViewCell.identifier, for: indexPath) as! PreparationCollectionViewCell
            
            cell.configureList(countNumber: "\(indexPath.row + 1)", procedureText: DietPlan.PreparationProcedure.steps[indexPath.row])
            return cell
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == self.foodNutrientCollectionView
        {
            return CGSize(width: 80.0 , height: 55.0)
        }
        else
        {
            return CGSize(width: 70.0 , height: 100.0)
        }
  
    }
    

}


//// MARK: Extention for ingredients list view with UICollectionView
//
//extension NutrientsViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
//{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
//    {
//        return DietPlan.Ingredients.foodName.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//        return CGSize(width: 96.0, height: 96.0)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
//    {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ingredientsCollectionViewCell", for: indexPath) as! FoodItemListCollectionViewCell
//
//        cell.configure(foodName: DietPlan.Ingredients.foodName[indexPath.row], foodImage: DietPlan.Ingredients.foodImage[indexPath.row], foodQuantity: DietPlan.Ingredients.foodQuantity[indexPath.row])
//
//        return cell
//    }
//
//}
//
//// MARK: Extention for preparation procedure using UITableView
//
//extension NutrientsViewController: UITableViewDelegate,UITableViewDataSource
//{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
//    {
//        return DietPlan.PreparationProcedure.steps.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "preparationTableViewCell", for: indexPath) as! PreparationTableViewCell
//        let steps = indexPath.row
//        cell.configureList(countNumber: "\(steps+1)", procedureText: DietPlan.PreparationProcedure.steps[indexPath.row])
//        return cell
//    }
//
//    // To dynamically set the height of row according to content lenght of label

//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
//    {
//        return UITableView.automaticDimension
//    }
//
//}
//
//
