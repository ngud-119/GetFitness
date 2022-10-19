//
//  NutrientsViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 16/10/22.
//

import UIKit

class NutrientsViewController: UIViewController
{

    @IBOutlet weak var foodImageView: UIView!
    
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodQuantitiy: UILabel!
    @IBOutlet weak var prepTime: UILabel!
    @IBOutlet weak var carbs: UILabel!
    @IBOutlet weak var fat: UILabel!
    @IBOutlet weak var protein: UILabel!
    @IBOutlet weak var ingredientsCollectionView: UICollectionView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        ingredientsCollectionView.delegate = self
        ingredientsCollectionView.dataSource = self
        foodImageView.roundCorners(corners: [.bottomRight,.bottomLeft], radius:40)
        
        // Do any additional setup after loading the view.
    }
    
    
}

extension UIView
{
   func roundCorners(corners: UIRectCorner, radius: CGFloat)
    {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

extension NutrientsViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return DietPlan.Ingredients.foodName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ingredientsCollectionViewCell", for: indexPath) as! IngredientsCollectionViewCell
        
        cell.configure(foodName: DietPlan.Ingredients.foodName[indexPath.row], foodImage: DietPlan.Ingredients.image[indexPath.row], foodQuantity: DietPlan.Ingredients.foodQuantity[indexPath.row])
        
        return cell
    }
    
    
}

