//
//  WorkoutsCardView.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 07/10/22.
//

import UIKit

class WorkoutCardView
{
    @IBOutlet weak var cardBackgroundImage: UIImageView!
    @IBOutlet weak var transparentLayer: UIImageView!
    @IBOutlet weak var workoutLevelLabel: UILabel!
    @IBOutlet weak var workoutNameLabel: UILabel!
    @IBOutlet weak var equipmentTypeLabel: UILabel!
    @IBOutlet weak var workoutTypeLabel: UILabel!
    @IBOutlet weak var totalWorkoutsLabel: UILabel!
    @IBOutlet weak var totalTimeLabel: UILabel!
    public func configureCard(image:UIImage,workoutLevel: String,workoutName: String,equipmentType: String,workoutType:String,totalWorkouts: Int,totalTime: Int)
    {
        cardBackgroundImage.image = image
        workoutLevelLabel.text = workoutLevel
        workoutNameLabel.text = workoutName
        equipmentTypeLabel.text = equipmentType
        workoutTypeLabel.text = workoutType
        totalWorkoutsLabel.text = "Total workouts: \(totalWorkouts)"
        totalTimeLabel.text = "Total time: \(totalTime) minutes"
        makeRoundedCorners()
    }
    
    private func makeRoundedCorners()
    {
        cardBackgroundImage.layer.cornerRadius = 10.0 // Make cell rounded
        cardBackgroundImage.layer.borderWidth = 0.5 // Set a line along the border
        cardBackgroundImage.layer.borderColor = UIColor.gray.cgColor // Set the color of border line
        transparentLayer.layer.cornerRadius = 10.0 // Setting card image corner radius
    }
    
}
