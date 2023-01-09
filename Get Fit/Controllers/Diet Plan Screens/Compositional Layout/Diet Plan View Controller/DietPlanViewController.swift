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


