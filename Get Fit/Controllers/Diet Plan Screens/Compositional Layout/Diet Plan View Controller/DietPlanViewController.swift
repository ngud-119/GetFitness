//
//  DietPlanViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 12/10/22.
//

import UIKit

var cardImageURL:[String] = [String]()
var foodName:[String] = [String]()
var foodQuantity:[String] = [String]()
var foodCalorie:[String] = [String]()

// Array for pupulating table view cells
var foodCardViewData = [FoodCardModel]()

// Food categoty
let foodCategoty = "Breakfast"

// Task2: Implement Compositional Layout;
class DietPlanViewController: UIViewController
{
    @IBOutlet weak var foodCardCollectionView: UICollectionView!
    
    typealias DataSource = UICollectionViewDiffableDataSource<Section, FoodCardModel>
    typealias DataSourceSnapshot = NSDiffableDataSourceSnapshot<Section,FoodCardModel>
    
    private var dataSource: DataSource!
    private var snapshot = DataSourceSnapshot()
    
    override func viewDidLoad()
    {
        configureCollectionViewLayout()
        configureCollectionViewDataSource()
        
        // Fetch data from API
        fetchCardData()
    }
    // Do any additional setup after loading the view.
}

// Extension for fetching data.
extension DietPlanViewController
{
    private func fetchCardData()
    {
        DietPlanData.shared.getRecipes(with: "Breakfast") { data in
            
            // Try to parse JSON data
            if let data = data
            {
                do
                {
                    
                    // Decoded JSON Data
                    let recipes = try JSONDecoder().decode(RecipeDescription.self, from: data)
                    
                    
                    for recipe in recipes.hits
                    {
                        cardImageURL.append(recipe.recipe!.image!)
                        foodName.append(recipe.recipe!.label!)
                        foodQuantity.append("\(recipe.recipe!.totalWeight!)")
                        foodCalorie.append("\(recipe.recipe!.calories!)")
                        
                    }
                    print(cardImageURL)
                    print(foodName)
                    print(foodQuantity)
                    print(foodCalorie)
                }
                catch
                {
                    print("Error while parsing data -> \(error)")
                }
            }
            
            
        }
    }
    
}
// Extention for creating layout.
extension DietPlanViewController
{
    enum Section
    {
        case main
    }
    
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
    public func foodCardLayoutSection() -> NSCollectionLayoutSection
    {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension:
                .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets.bottom = 10
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.45), heightDimension:
                .fractionalWidth(0.55))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.boundarySupplementaryItems = [supplemetaryHeaderItem()]
        section.contentInsets = .init(top: 0, leading: 10, bottom: 0, trailing: 10 )
        section.interGroupSpacing = 15
        return section
    }
    
    // Adding header to the group
    public func supplemetaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem
    {
        return .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
    }
    
    private func configureCollectionViewLayout()
    {
        foodCardCollectionView.delegate = self
        foodCardCollectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier )
        foodCardCollectionView.collectionViewLayout = createCompositionalLayout()
    }
    
    // To populate data in collection view.
    // Task3: Use Diffable Data source and populate collection view.
    private func configureCollectionViewDataSource()
    {
        dataSource = DataSource(collectionView: foodCardCollectionView, cellProvider: { (foodCardCollectionView , indexPath, foodCardModel) -> FoodCardCollectionViewCell?  in
            
            let cell = foodCardCollectionView.dequeueReusableCell(withReuseIdentifier: FoodCardCollectionViewCell.identifier, for: indexPath) as! FoodCardCollectionViewCell
            
            cell.configureFoodCard(cardImageUrl: DietPlan.Breakfast.cardImageURL[indexPath.row], foodNameLabel: DietPlan.Breakfast.foodName[indexPath.row], foodQuantityLabel: DietPlan.Breakfast.foodQuantity[indexPath.row], calorieLabel: DietPlan.Breakfast.foodQuantity[indexPath.row])
            
            return cell
        })
        
        
    }
    
    private func createDummyData()
    {
        var dummyFoodCardData: [FoodCardModel] = []
        dummyFoodCardData.append(FoodCardModel(foodCategory: "Breakfast", cardImage: DietPlan.Breakfast.cardImageURL, foodName: DietPlan.Breakfast.foodName, foodQuantity: DietPlan.Breakfast.foodQuantity, foodCalorie: DietPlan.Breakfast.foodCalories))
        applySnapshot(with: dummyFoodCardData)
    }
    
    private func applySnapshot(with foodcardData: [FoodCardModel])
    {
        snapshot = DataSourceSnapshot()
        snapshot.appendSections([Section.main])
        snapshot.appendItems(foodcardData)
        dataSource.apply(snapshot,animatingDifferences: true)
        
    }
    
}
// Extension for Populating collection view.
extension DietPlanViewController: UICollectionViewDelegate
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 5
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 3
    }
    
    
    // For creating header of card layout.
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
        
        header.configure()
        return header
    }
}


