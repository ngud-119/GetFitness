//
//  FoodNutrientsViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 05/01/23.
//

import UIKit

class FoodNutrientsViewController: UIViewController, UICollectionViewDelegate
{
   
    @IBOutlet weak var foodNutrientsCollectionView: UICollectionView!
    
    var dietVC = DietPlanViewController()
    override func viewDidLoad()
    {
        self.viewDidLoad()
        
        foodNutrientsCollectionView.delegate = self
        foodNutrientsCollectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier )
        foodNutrientsCollectionView.collectionViewLayout = createCompositionalLayout()
    }
    
    // Implement sections
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout
    {
        UICollectionViewCompositionalLayout { sectionIndex, LayoutEnvironment in

            switch sectionIndex
            
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
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.45), heightDimension:
                .fractionalWidth(0.55))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        // section.boundarySupplementaryItems = [supplemetaryHeaderItem()]
        section.contentInsets = .init(top: 0, leading: 10, bottom: 0, trailing: 10 )
        section.interGroupSpacing = 15
        return section
    }
    
    
}
