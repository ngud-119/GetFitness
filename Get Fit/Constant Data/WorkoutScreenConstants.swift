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
    static let workoutLevel: [String] = ["BEGINNER LEVEL","MODRATE LEVEL","ADVANCE LEVEL"] // Array for storing the workout level text.
    static let workoutName: [String] = ["Strong and Big Chest","Back Workout","Bicep Workout"] // Array for stroing the workout name.
    static let equiptmentType: [String] = ["Full Equipment","No Equipment","Body Weight"] // Array for strting the equiptment label.
    static let workoutType: [String] = ["Strength","Endurance","Weight"] // Array for storing the workout name.
    static let totalWorkouts: [Int] = [6,7,5] // Array for storing total workouts.
    static let totalTime: [Int] = [45,55,60] // Array for storing total time of workout.
    static let cardImages: [UIImage] = [UIImage(named: "Chest.jpeg")!,UIImage(named: "Back.jpeg")!,UIImage(named: "Biceps.jpeg")!] // Array for storing the card images.
}
