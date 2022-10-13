//
//  FoodItemTableViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 13/10/22.
//

import UIKit

class FoodItemTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var foodCardCollectionView: UICollectionView!
    @IBOutlet weak var foodCategory: UILabel!
    override func awakeFromNib()
    {
        super.awakeFromNib()
        foodCardCollectionView.delegate = self
        foodCardCollectionView.dataSource = self
        // Initialization code
    }
    
    private func configureTableViewCell(foodCategory: String,foodCardView: FoodCardCollectionViewCell, image: UIImage,foodName: String,foodQuantity: String,calorie: String) -> FoodCardCollectionViewCell
    {
        self.foodCategory.text = foodCategory
        foodCardView.cardImage.image = image
        foodCardView.foodNameLabel.text = foodName
        foodCardView.foodQuantityLabel.text = foodQuantity
        foodCardView.calorieLabel.text = calorie
        
        return foodCardView
    }
}

extension FoodItemTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 150.0, height: 200.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCardCollectionViewCell", for: indexPath) as? FoodCardCollectionViewCell
        
        cell?.makeCornerRounded()
        
        return configureTableViewCell(foodCategory: DietPlan.foodCategoryTitle[indexPath.row], foodCardView: cell!, image: DietPlan.Breakfast.cardImage[indexPath.row], foodName: DietPlan.Breakfast.foodName[indexPath.row], foodQuantity: DietPlan.Breakfast.foodQuantity[indexPath.row], calorie: DietPlan.Breakfast.foodCalories[indexPath.row])
    }
}
