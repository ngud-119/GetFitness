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
    @IBOutlet weak var numbersOfSet: UILabel!
    @IBOutlet weak var numberOfReps: UILabel!
    
    public func configureCell(image:UIImage,name: String,totalSets: Int,repRange: String)
    {
        exerciseImage.image = image
        exerciseName.text = name
        numbersOfSet.text = "\(totalSets) Sets"
        numberOfReps.text = repRange + " repetations each"
        makeRoundedCorners()
    }
    
    private func makeRoundedCorners()
    {
        exerciseImage.layer.cornerRadius = 5.0
        exerciseImage.layer.borderWidth = 0.5
        exerciseImage.layer.borderColor = UIColor.gray.cgColor
    }
    
}
