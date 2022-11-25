//
//  WorkoutSceen.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 05/10/22.
//

import UIKit

// Struct tot store constants string used is workout screen
struct WorkoutScreenConstants
{
    // Array for storing the card images.
    public static let cardImages: [UIImage] = [UIImage(named: "Cardio")!,UIImage(named: "Shoulder")!,UIImage(named: "Upper arms.jpeg")!,UIImage(named: "Lower arms.jpg")!,UIImage(named: "Chest.jpg")!,UIImage(named: "Back.jpeg")!,UIImage(named: "Leg.jpeg")!,UIImage(named: "Lower legs.jpg")!]
    
    // Array for stroing the workout name.
    public static let workoutName: [String] = ["Cardio","Shoulder Workout","Upper arms","Lower arms","Chest Workout","Back Workout","Upper legs","Lower legs"]
    
    // Array for storing total workouts.
    public static let totalWorkouts: [Int] = [6,7,5,12,22,33,8,9]
}
