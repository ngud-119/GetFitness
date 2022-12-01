//
//  ExerciseListCel.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 07/10/22.
//

import UIKit

class ExerciseListCell: UITableViewCell
{
    @IBOutlet weak var exerciseImage: UIImageView!
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var targetMuscleName: UILabel!
    @IBOutlet weak var equipmentName: UILabel!
    
    public func configureCell(gifURL: String,name: String,targetMuscle: String,equipment: String)
    {
//        exerciseImage.image = 
        // exerciseImage.image = UIImage.gifImageWithName("sample")
        exerciseName.text = name
        targetMuscleName.text = "Target Muscle: \(targetMuscle)"
        equipmentName.text = "Equipment: \(equipment)"
        makeRoundedCorners()
    }
    
    private func makeRoundedCorners()
    {
        exerciseImage.layer.cornerRadius = 5.0
        exerciseImage.layer.borderWidth = 0.5
        exerciseImage.layer.borderColor = UIColor.gray.cgColor
    }
    
}
