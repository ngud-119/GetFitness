//
//  DietPlanViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 12/10/22.
//

import UIKit


// Array for populating food card collection view cells.
var foodCardViewData = [FoodCardModel]()

// Task2: Implement Compositional Layout;
class DietPlanViewController: UIViewController
{
    @IBOutlet weak var foodCardCollectionView: UICollectionView!
    
    override func viewDidLoad()
    {
        configureCollectionView()
        
        // Fetch data from API
        // fetchFoodData()
        
    }
    
    private func fetchFoodData()
    {
        
        Task.init(operation: {
            
            let breakfast = await DietPlanData.shared.getRecipes(foodCategory: "Breakfast")
            let brunch = await DietPlanData.shared.getRecipes(foodCategory: "Brunch")
            let lunch = await DietPlanData.shared.getRecipes(foodCategory: "Lunch")
            let drinks = await DietPlanData.shared.getRecipes(foodCategory: "Drinks")
            let supper = await DietPlanData.shared.getRecipes(foodCategory: "Supper")
            let dinner = await DietPlanData.shared.getRecipes(foodCategory: "Dinner")
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Breakfast" , cardImage: breakfast.cardImage, foodName: breakfast.foodName, foodQuantity: breakfast.foodQuantity, foodCalorie: breakfast.foodCalorie))
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Brunch" , cardImage: brunch.cardImage, foodName: brunch.foodName, foodQuantity: brunch.foodQuantity, foodCalorie: brunch.foodCalorie))
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Lunch" , cardImage: lunch.cardImage, foodName: lunch.foodName, foodQuantity: lunch.foodQuantity, foodCalorie: lunch.foodCalorie))
            
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Drinks" , cardImage: drinks.cardImage, foodName: drinks.foodName, foodQuantity: drinks.foodQuantity, foodCalorie: drinks.foodCalorie))
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Supper" , cardImage: supper.cardImage, foodName: supper.foodName, foodQuantity: supper.foodQuantity, foodCalorie: supper.foodCalorie))
            
            foodCardViewData.append(FoodCardModel(foodCategory: "Dinner" , cardImage: dinner.cardImage, foodName: dinner.foodName, foodQuantity: dinner.foodQuantity, foodCalorie: dinner.foodCalorie))
            
            DispatchQueue.main.async
            {
                self.foodCardCollectionView.reloadData()
            }
        })
    }
}

// MARK: Extention for compositional Layout and setting collection view.
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

// MARK: Extension for Populating collection view.
extension DietPlanViewController: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCardCollectionViewCell.identifier , for: indexPath) as! FoodCardCollectionViewCell
        
        // API Data for cells.
        //        cell.configureFoodCard(cardImageUrl: foodCardViewData[indexPath.section].cardImage[indexPath.row], foodNameLabel: foodCardViewData[indexPath.section].foodName[indexPath.row], foodQuantityLabel: foodCardViewData[indexPath.section].foodQuantity[indexPath.row], calorieLabel: foodCardViewData[indexPath.section].foodCalorie[indexPath.row])
        
        // Mock Data for cells.
        cell.configureFoodCard(cardImageUrl: DietPlan.foodCardViewData[indexPath.section].cardImage[indexPath.row], foodNameLabel: DietPlan.foodCardViewData[indexPath.section].foodName[indexPath.row], foodQuantityLabel: DietPlan.foodCardViewData[indexPath.section].foodQuantity[indexPath.section], calorieLabel: DietPlan.foodCardViewData[indexPath.section].foodCalorie[indexPath.row])
        
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        // API Data
        // return foodCardViewData[0].foodName.count
        
        // Mock Data
        return DietPlan.foodCardViewData[0].cardImage.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        // API Data
        // return foodCardViewData.count
        
        // Mock Data
        return DietPlan.foodCardViewData.count
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCardCollectionViewCell.identifier, for: indexPath) as! FoodCardCollectionViewCell
        
        // Storyboard Instance
        let DietPlanstoryboard = UIStoryboard(name: "Diet Plan Screen", bundle: nil)
        
        // Instance of NutrientsViewController
        let vc = DietPlanstoryboard.instantiateViewController(withIdentifier: NutrientsViewController.storyboardID) as! NutrientsViewController
        
        // Actual data
        //        let imageURL = foodCardViewData[indexPath.section].cardImage[indexPath.row]
        //        let foodName = foodCardViewData[indexPath.section].foodName[indexPath.row]
        //        let foodQuantity = foodCardViewData[indexPath.section].foodQuantity[indexPath.row]
        //
        //        let foodCategory = foodCardViewData[indexPath.section].foodCategory
        
        // Mock Data
        let imageURL = DietPlan.foodCardViewData[indexPath.section].cardImage[indexPath.row]
        let foodName = DietPlan.foodCardViewData[indexPath.section].foodName[indexPath.row]
        let foodQuantity = DietPlan.foodCardViewData[indexPath.section].foodQuantity[indexPath.section]
        
        let foodCategory = DietPlan.foodCategoryTitle[indexPath.section]
        
        let indexNumber = indexPath.row
        
        cell.passDataToNutrientsVC(vc: vc, imageURL: imageURL, foodName: foodName, foodQuantity: foodQuantity,indexNumber: indexNumber,foodCategory: foodCategory)
        
        // To navigate from Diet Plan Viewcontroller to NutrientsViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

// MARK: For creating header of card layout.
extension DietPlanViewController
{
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
        
        // Function call for populating API data.
        // header.configure(headerTitle: foodCardViewData[indexPath.section].foodCategory)
        
        // Function call for Mock data.
        header.configure(headerTitle: DietPlan.foodCardViewData[indexPath.section].foodCategory)
        
        
        
        return header
    }
}


