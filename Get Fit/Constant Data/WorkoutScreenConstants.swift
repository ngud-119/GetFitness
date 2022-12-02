//
//  WorkoutSceen.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 05/10/22.
//

import UIKit

/// Struct to store constants string used is workout screen
struct WorkoutScreenConstants
{
    /// Array for storing API endpoints body name with respective card image
    public static let bodyPart: [String] = ["cardio","shoulders","upper%20arms","lower%20arms","chest","back","upper%20legs","lower%20legs"]
    /// Array for storing the card images.
    public static let cardImages: [UIImage] = [UIImage(named: "Cardio")!,UIImage(named: "Shoulder")!,UIImage(named: "Upper arms.jpeg")!,UIImage(named: "Lower arms.jpg")!,UIImage(named: "Chest.jpg")!,UIImage(named: "Back.jpeg")!,UIImage(named: "Leg.jpeg")!,UIImage(named: "Lower legs.jpg")!]
    
    /// Array for stroing the workout name.
    public static let workoutName: [String] = ["Cardio","Shoulder Workout","Upper arms","Lower arms","Chest Workout","Back Workout","Upper legs","Lower legs"]
    
    /// Array for storing total workouts.
    public static let totalWorkouts: [Int] = [29,144,292,37,164,203,227,59]
}
