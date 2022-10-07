//
//  CardCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 02/10/22.
//

import UIKit

class CardCell: UITableViewCell
{
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var cardBackgroundImageView: UIImageView!
    @IBOutlet weak var workoutLevelLabel: UILabel!
    @IBOutlet weak var workoutNameLabel: UILabel!
    @IBOutlet weak var equipmentTypeLabel: UILabel!
    @IBOutlet weak var workoutTypeLabel: UILabel!
    @IBOutlet weak var totalWorkoutsLabel: UILabel!
    @IBOutlet weak var totalTimeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    // Function for setting up the cell.
    func configure(image: UIImage,workoutLevel: String,workoutName: String,equipmentType: String,workoutType: String,totalWorkouts:Int,totalTime: Int)
    {
        cardBackgroundImageView.image = image
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
        cardView.layer.cornerRadius = 10.0 // Make cell rounded
        cardView.layer.borderWidth = 0.5 // Set a line along the border
        cardView.layer.borderColor = UIColor.gray.cgColor // Set the color of border line
        
        cardBackgroundImageView.layer.cornerRadius = 10.0 // Setting card image corner radius
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton)
    {
        print("Start button in card tapped !")
    }

}
