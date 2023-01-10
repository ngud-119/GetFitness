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
        
        cell.configureFoodCard(cardImageUrl: "data:image/jpeg;base64,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", foodNameLabel: "Food", foodQuantityLabel: 111, calorieLabel: 344)
        
//        cell.configureFoodCard(cardImageUrl: foodCardViewData[indexPath.section].cardImage[indexPath.row], foodNameLabel: foodCardViewData[indexPath.section].foodName[indexPath.row], foodQuantityLabel: foodCardViewData[indexPath.section].foodQuantity[indexPath.row], calorieLabel: foodCardViewData[indexPath.section].foodCalorie[indexPath.row])
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        5
        //return foodCardViewData[0].foodName.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        2
        //return foodCardViewData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCardCollectionViewCell.identifier, for: indexPath) as! FoodCardCollectionViewCell
        
//        print(foodCardViewData[indexPath.section].foodName[indexPath.row])
//        print(foodCardViewData[indexPath.section].foodQuantity[indexPath.row])
//        print(foodCardViewData[indexPath.section].foodCalorie[indexPath.row])
        
        let DietPlanstoryboard = UIStoryboard(name: "Diet Plan Screen", bundle: nil)

        // Instance of ExerciseListVC
        let vc = DietPlanstoryboard.instantiateViewController(withIdentifier: "foodNutrientsViewController") as! FoodNutrientsViewController
        
        // To navigate from WorkoutsVC to ExerciseListVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}

// MARK: For creating header of card layout.
extension DietPlanViewController
{
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
        
        //header.configure(headerTitle: foodCardViewData[indexPath.section].foodCategory)
        header.configure(headerTitle: "Food Header")
        return header
    }
}


