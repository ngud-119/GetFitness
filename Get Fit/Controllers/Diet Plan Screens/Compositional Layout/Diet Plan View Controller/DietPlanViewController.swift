//
//  DietPlanViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 12/10/22.
//

import UIKit


// Array for pupulating table view cells
var foodCardViewData = [FoodCardModel]()

// Task2: Implement Compositional Layout;
class DietPlanViewController: UIViewController
{
    @IBOutlet weak var foodCardCollectionView: UICollectionView!
    
    override func viewDidLoad()
    {
        // ["BreakFast","Brunch","Lunch","Drinks","Supper","Dinner"]
        configureCollectionView()
        // Fetch data from API
        Task.init(operation: {
            
            let breakfast = await DietPlanData.shared.getRecipes(foodCategory: "Breakfast")
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Breakfast" , cardImage: breakfast.cardImage, foodName: breakfast.foodName, foodQuantity: breakfast.foodQuantity, foodCalorie: breakfast.foodCalorie))
            
            let brunch = await DietPlanData.shared.getRecipes(foodCategory: "Brunch")
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Brunch" , cardImage: brunch.cardImage, foodName: brunch.foodName, foodQuantity: brunch.foodQuantity, foodCalorie: brunch.foodCalorie))
            
            let lunch = await DietPlanData.shared.getRecipes(foodCategory: "Lunch")
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Lunch" , cardImage: lunch.cardImage, foodName: lunch.foodName, foodQuantity: lunch.foodQuantity, foodCalorie: lunch.foodCalorie))
            
            let drinks = await DietPlanData.shared.getRecipes(foodCategory: "Drinks")
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Drinks" , cardImage: drinks.cardImage, foodName: drinks.foodName, foodQuantity: drinks.foodQuantity, foodCalorie: drinks.foodCalorie))
            
            let supper = await DietPlanData.shared.getRecipes(foodCategory: "Supper")
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Supper" , cardImage: supper.cardImage, foodName: supper.foodName, foodQuantity: supper.foodQuantity, foodCalorie: supper.foodCalorie))
            
            let dinner = await DietPlanData.shared.getRecipes(foodCategory: "Dinner")
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Dinner" , cardImage: dinner.cardImage, foodName: dinner.foodName, foodQuantity: dinner.foodQuantity, foodCalorie: dinner.foodCalorie))
            
            DispatchQueue.main.async
            {
                self.foodCardCollectionView.reloadData()
            }
        })
       
        // Do any additional setup after loading the view.
    }
}

// Extention for compositional Layout and setting collection view.
extension DietPlanViewController
{
    
    // Function to create compositional Layout.
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout
    {
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
            
            switch sectionNumber
            {
                
            default:
                
                return self.foodCardLayoutSection()
            }
        }
    }
    
    // Creating card layout with NSCollectionLayoutSection
    private func foodCardLayoutSection() -> NSCollectionLayoutSection
    {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension:
                .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets.bottom = 10
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.43), heightDimension:
                .fractionalWidth(0.60))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.boundarySupplementaryItems = [supplemetaryHeaderItem()]
        section.contentInsets = .init(top: 0, leading: 10, bottom: 0, trailing: 10 )
        section.interGroupSpacing = 15
        return section
    }
    
    // Adding header to the group
    private func supplemetaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem
    {
        return .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
    }
    
    private func configureCollectionView()
    {
        foodCardCollectionView.delegate = self
        foodCardCollectionView.dataSource = self
        foodCardCollectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier )
        foodCardCollectionView.collectionViewLayout = createCompositionalLayout()
    }
    
}

// Extension for Populating collection view.
extension DietPlanViewController: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCardCollectionViewCell.identifier , for: indexPath) as! FoodCardCollectionViewCell
        
        cell.configureFoodCard(cardImageUrl: foodCardViewData[indexPath.section].cardImage[indexPath.row], foodNameLabel: foodCardViewData[indexPath.section].foodName[indexPath.row], foodQuantityLabel: foodCardViewData[indexPath.section].foodQuantity[indexPath.row], calorieLabel: foodCardViewData[indexPath.section].foodCalorie[indexPath.row])
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return foodCardViewData[0].foodName.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return foodCardViewData.count
    }
    
    
    // For creating header of card layout.
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
        
        header.configure(headerTitle: foodCardViewData[indexPath.section].foodCategory)
        return header
    }
}


