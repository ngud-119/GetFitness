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
//    @IBOutlet weak var ingredientsCollectionView: UICollectionView!
//    @IBOutlet weak var preparationStepsTableView: UITableView!
    
    @IBOutlet weak var containtsScrollView: UIScrollView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        foodImageView.image = UIImage(named: "Chocolate Oatmeal")
        containtsScrollView.contentInsetAdjustmentBehavior = .never
        foodImageView.layer.opacity = 0.60
        
        foodNutrientCollectionView.delegate = self
        foodNutrientCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
}

extension NutrientsViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodNutrientsCollectionViewCell.identifier, for: indexPath) as! FoodNutrientsCollectionViewCell
        
        cell.configureCell(cellTitle: "prep time", foodQuantity: 60.9, foodUnit: "g")
        return cell
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
