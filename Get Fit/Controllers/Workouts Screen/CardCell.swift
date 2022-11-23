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
 
    @IBOutlet weak var workoutNameLabel: UILabel!

    @IBOutlet weak var totalWorkoutsLabel: UILabel!
   
    // Function for setting up the cell.
    func configure(image: UIImage,workoutName: String,totalWorkouts:Int)
    {
        cardBackgroundImageView.image = image
        workoutNameLabel.text = workoutName
        totalWorkoutsLabel.text = "Total workouts: \(totalWorkouts)"
        makeRoundedCorners()
    }
    
    // Passes data from current tableview cell to exercise list view controller
    public func passDataToExerciseListVC(vc: ExerciseListViewController?, VCTitle: String,image: UIImage,workoutName:String,totalWorkouts:Int)
    {
        vc?.viewControllerTitle = VCTitle
        vc?.image = image
        vc?.workoutName = workoutName
        vc?.totalWorkouts = totalWorkouts
    }
    
    private func makeRoundedCorners()
    {
        cardView.layer.cornerRadius = 10.0 // Make cell rounded
        cardView.layer.borderWidth = 0.5 // Set a line along the border
        cardView.layer.borderColor = UIColor.gray.cgColor // Set the color of border line
        
        cardBackgroundImageView.layer.cornerRadius = 10.0 // Setting card image corner radius
    }
    
}
