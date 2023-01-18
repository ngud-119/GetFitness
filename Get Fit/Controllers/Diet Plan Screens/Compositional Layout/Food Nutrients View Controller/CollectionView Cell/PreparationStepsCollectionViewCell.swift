//
//  PreparationStepsCollectionViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 16/01/23.
//

import UIKit

final class PreparationStepsCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var stepCountView: UIView!
    
    @IBOutlet weak var stepCountLabel: UILabel!
    
    @IBOutlet weak var stepDescriptionLabel: UILabel!
    
    static let identifier = "preparationStepsCollectionViewCell"
    
    func setup()
    {
        // Code 
    }
}
