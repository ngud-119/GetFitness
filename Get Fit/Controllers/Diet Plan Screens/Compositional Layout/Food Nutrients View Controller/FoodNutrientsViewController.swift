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
        self.viewDidLoad()
        
        foodNutrientsCollectionView.collectionViewLayout = createCompositionalLayout()
    }
    
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout
    {
        UICollectionViewCompositionalLayout { [weak self] sectionIndex, LayoutEnvironment in
            
            guard let self = self else { return }
            
            let section = self.section[sectionIndex]
            
            switch section
            {
                
            }
        }
    }
}
