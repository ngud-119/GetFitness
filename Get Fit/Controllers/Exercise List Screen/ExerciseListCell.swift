//
//  ExerciseListCel.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 07/10/22.
//

import UIKit

class ExerciseListCell: UITableViewCell
{
    /// @IBOutlet weak var exerciseImage: UIImageView!
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var targetMuscleName: UILabel!
    @IBOutlet weak var equipmentName: UILabel!
    
    public func configureCell(name: String,targetMuscle: String,equipment: String)
    {
        exerciseName.text = name
        targetMuscleName.text = "Target Muscle: \(targetMuscle)"
        equipmentName.text = "Equipment: \(equipment)"
        /// makeRoundedCorners()
    }
    
    public func passData(vc: GifViewController? ,name: String, muscle: String, equipment: String, gifUrl: String)
    {
        vc?.name = name
        vc?.muscle = muscle
        vc?.equipmentType = equipment
        vc?.gifUrl = gifUrl
    }
    
//    private func makeRoundedCorners()
//    {
//        exerciseImage.layer.cornerRadius = 5.0
//        exerciseImage.layer.borderWidth = 0.5
//        exerciseImage.layer.borderColor = UIColor.gray.cgColor
//    }
    
}
