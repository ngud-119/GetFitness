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
    // Method for setting title for table view cell
    public func updateTitle(title: String)
    {
        foodCategory.text = title
    }
}

extension FoodItemTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        print(section)
        return foodCardViewData[foodCardCollectionView.tag].cardImage.count
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 150.0, height: 200.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCardCollectionViewCell", for: indexPath) as! FoodCardCollectionViewCell
        
        cell.configureFoodCard(
            cardImage: foodCardViewData[foodCardCollectionView.tag].cardImage[indexPath.row],
            
            foodNameLabel: foodCardViewData[foodCardCollectionView.tag].foodName[indexPath.row],
            
            foodQuantityLabel:foodCardViewData[foodCardCollectionView.tag].foodQuantity[indexPath.row],
            
            calorieLabel: foodCardViewData[foodCardCollectionView.tag].foodCalorie[indexPath.row]
        )
        
        return cell
    }
}
