//
//  ExerciseList.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 07/10/22.
//
import UIKit

/// Struct for populating Exercise list view controller.
struct ExerciseList
{
//    "cardio","shoulders","upper%20arms","lower%20arms","chest","back","upper%20legs","lower%20legs"
    
    var mockData: [ExerciseListDataModel] =
    [
        // Chest Workout Data
        ExerciseListDataModel(exerciseGIF: [], exerciseName: [], targetMuscle: [], exerciseEquipment: []),
        
        // Shoulder Workouts Data
        ExerciseListDataModel(exerciseGIF: <#T##[String]#>, exerciseName: <#T##[String]#>, targetMuscle: <#T##[String]#>, exerciseEquipment: <#T##[String]#>),
        
        // Upper Arm Workouts Data
        ExerciseListDataModel(exerciseGIF: <#T##[String]#>, exerciseName: <#T##[String]#>, targetMuscle: <#T##[String]#>, exerciseEquipment: <#T##[String]#>),
        
        // Chest Workouts Data
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/2/1/8/8/9/21889.gif","https://gymvisual.com/img/p/1/9/7/9/9/19799.gif","https://gymvisual.com/img/p/2/1/9/4/3/21943.gif","https://gymvisual.com/img/p/1/1/6/3/2/11632.gif","https://gymvisual.com/img/p/5/0/7/2/5072.gif"], exerciseName: ["Bench Press","Dumbbell Press","Incline Dumbbell Press","Decline Dumbbell Press","Dumbbell Flyes"], targetMuscle: ["Pec and triceps","middle pec ","Upper Chest","Lower Chest","middle chest"], exerciseEquipment: ["Barbell","Dumbbels"," Dumbbels","Dumbbels","Dumbbels"]),
        
        // Back Workouts Data
        ExerciseListDataModel(exerciseGIF: <#T##[String]#>, exerciseName: <#T##[String]#>, targetMuscle: <#T##[String]#>, exerciseEquipment: <#T##[String]#>),
        
        // Upper Leg Workouts Data
        ExerciseListDataModel(exerciseGIF: <#T##[String]#>, exerciseName: <#T##[String]#>, targetMuscle: <#T##[String]#>, exerciseEquipment: <#T##[String]#>),
        
        // Lower Leg Workouts Data
        ExerciseListDataModel(exerciseGIF: <#T##[String]#>, exerciseName: <#T##[String]#>, targetMuscle: <#T##[String]#>, exerciseEquipment: <#T##[String]#>)
        
    ]
    
    public static let totalSets: [String] = ["2","3","4","5","6"]
    public static let repRange: [String] = ["6-8","8-10","2-4","2-6","5-10"]
    
}


