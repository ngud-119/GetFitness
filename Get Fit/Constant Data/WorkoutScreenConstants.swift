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
    public static let cardImages: [UIImage] = [UIImage(named: "Cardio")!,UIImage(named: "Shoulder")!,UIImage(named: "Biceps.jpeg")!,UIImage(named: "Chest.jpg")!,UIImage(named: "Back.jpeg")!,UIImage(named: "Leg.jpeg")!]
    
    // Array for stroing the workout name.
    public static let workoutName: [String] = ["Cardio","Shoulder Workout","Bicep Workout","Chest Workout","Back Workout","Leg Workout"]
    
    // Array for storing total workouts.
    public static let totalWorkouts: [Int] = [6,7,5,12,22,33]
}
