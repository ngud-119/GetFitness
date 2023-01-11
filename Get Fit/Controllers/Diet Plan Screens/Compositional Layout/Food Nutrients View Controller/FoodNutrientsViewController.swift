//
//  FoodNutrientsViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 05/01/23.
//

import UIKit

class FoodNutrientsViewController: UIViewController
{
    
    @IBOutlet weak var foodNutrientsCollectionView: UICollectionView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureFoodNutrientsCollectionView()
    }
}

// MARK: Extension for populating data in the collection view
extension FoodNutrientsViewController: UICollectionViewDelegate,UICollectionViewDataSource
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        4
    }
    // TASK1:Implemant different sections
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodNutientsCollectionViewCell.identifier, for: indexPath) as! FoodNutientsCollectionViewCell
        
        cell.configure(title: "prep time", quantity: "12", unit: "g")
        return cell
    }
    
}

// MARK: Extention for creating compositional layout and configuring collection view
extension FoodNutrientsViewController
{
    // Function to create compositional Layout.
    private func createLayout() -> UICollectionViewCompositionalLayout
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
       
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension:
                .fractionalHeight(0.5))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets.bottom = 10
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension:
                .fractionalWidth(0.5))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = .init(top: 10, leading: 10, bottom: 0, trailing: 10 )
        section.interGroupSpacing = 15
        section.boundarySupplementaryItems = [headerImageView()]
      
        return section
    }
    
    private func configureFoodNutrientsCollectionView()
    {
        foodNutrientsCollectionView.delegate = self
        foodNutrientsCollectionView.dataSource = self
        foodNutrientsCollectionView.register(HeaderImageReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderImageReusableView.identifier )
        
//        foodNutrientsCollectionView.register(FoodNutientsCollectionViewCell.self, forCellWithReuseIdentifier: FoodNutientsCollectionViewCell.identifier)
        
        foodNutrientsCollectionView.register(FoodNutientsCollectionViewCell.self, forCellWithReuseIdentifier: FoodNutientsCollectionViewCell.identifier)
        foodNutrientsCollectionView.contentInsetAdjustmentBehavior = .never
        foodNutrientsCollectionView.collectionViewLayout = createLayout()
    }
    
}

// MARK: For creating header image of collection view
extension FoodNutrientsViewController: UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderImageReusableView.identifier, for: indexPath) as! HeaderImageReusableView
        
        return header
    }
    
    // Setting corner radius in bottom of header view.
    func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath)
    {
        view.roundCorners(corners: [.bottomLeft,.bottomRight], radius: 40)
    }
    
    // For setting height of header image
    private func headerImageView() -> NSCollectionLayoutBoundarySupplementaryItem
    {
        return .init(layoutSize: .init(widthDimension: .absolute(view.frame.width), heightDimension: .absolute(400)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
    }
    
}

