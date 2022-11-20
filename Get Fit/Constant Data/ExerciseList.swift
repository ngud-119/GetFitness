//
//  ExerciseList.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 07/10/22.
//
import UIKit

struct ExerciseList
{
    public static let cellImage: [UIImage] = [UIImage(named: "Bench Press")!,UIImage(named: "Dumbbell Press")!,UIImage(named: "Incline Dumbbell Press")!,UIImage(named: "Decline Dumbbell Press")!,UIImage(named: "Dumbbell Flyes")!]
    public static let exerciseName: [String] = ["Bench Press","Dumbbell Press","Incline Dumbbell Press","Decline Dumbbell Press","Dumbbell Flyes"]
    public static let totalSets: [Int] = [2,3,4,5,6]
    public static let repRange: [String] = ["6-8","8-10","2-4","2-6","5-10"]
}
