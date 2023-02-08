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
    /// Instance of ExeciseList stuct
    static let shared = ExerciseList()
    
    var mockData: [ExerciseListDataModel] =
    [
        // Cardio Workout Data
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/1/0/7/5/9/10759.gif","https://gymvisual.com/img/p/1/4/9/5/1/14951.gif","https://gymvisual.com/img/p/2/7/0/2/0/27020.gif","https://gymvisual.com/img/p/2/6/2/3/7/26237.gif"], exerciseName: ["Jump rope","Jumping jacks","Burpees","Squat jumps"], targetMuscle: ["calves, quads, hamstrings","egs, hips, buttocks, abdomen, arms, chest, and shoulders","legs, hips, buttocks, abdomen, arms, chest, and shoulders","glutes, quads, hips, and hamstrings"], exerciseEquipment: ["Jumping ropes","Free Body","Free Body","Free Body"]),
        
        // Shoulder Workouts Data
        
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/2/1/8/5/4/21854.gif","https://gymvisual.com/img/p/2/1/6/0/8/21608.gif","https://gymvisual.com/img/p/1/8/3/5/7/18357.gif","https://gymvisual.com/img/p/1/9/8/1/3/19813.gif"], exerciseName: ["Over head Barbell Press","Front Raises","Lateral Raises","Arnold Press"], targetMuscle: ["Barbell","Dumbbell","Dumbbell","Dumbbell"], exerciseEquipment: ["Pectorals,Deltoids,Triceps,Trapezius","Anterior Deltoid","Lateral Deltoid, Traps","Triceps, Trapezius, and the delts"]),
        
        // Upper Arm Workouts Data
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/2/0/3/7/1/20371.gif","https://gymvisual.com/img/p/2/1/6/0/5/21605.gif","https://gymvisual.com/img/p/2/2/9/7/9/22979.gif","https://gymvisual.com/animated-gifs/12130-barbell-incline-triceps-extension-skull-crusher.html?search_query=Skull+Crusher&results=16"], exerciseName: ["Inclined Dumbbell Bicep curls","Barbell Spider Curl","One Arm Cable Pushdown","Skull Crushers"], targetMuscle: ["Bicep","Bicep","Tricep","Ticep"], exerciseEquipment: ["Dumbells","Barbell","Cable machine","Barbell"]),
        
        // Lower Arm Workouts Data
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/8/8/0/3/8803.gif","https://gymvisual.com/img/p/1/1/6/5/8/11658.gif","https://gymvisual.com/img/p/2/0/3/4/8/20348.gif"], exerciseName: ["Farmer Walk","EZ Barbell Reverse Grip Curl","Reverse Wrist Curl"], targetMuscle: ["forearms, and hand muscles","brachioradialis","wrist extensor and flexor muscles"], exerciseEquipment: ["Dumbells","EZ Barbell","Dumbbell"]),
        
        // Chest Workouts Data
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/2/1/8/8/9/21889.gif","https://gymvisual.com/img/p/1/9/7/9/9/19799.gif","https://gymvisual.com/img/p/2/1/9/4/3/21943.gif","https://gymvisual.com/img/p/1/1/6/3/2/11632.gif","https://gymvisual.com/img/p/5/0/7/2/5072.gif"], exerciseName: ["Bench Press","Dumbbell Press","Incline Dumbbell Press","Decline Dumbbell Press","Dumbbell Flyes"], targetMuscle: ["Pec and triceps","middle pec ","Upper Chest","Lower Chest","middle chest"], exerciseEquipment: ["Barbell","Dumbbels"," Dumbbels","Dumbbels","Dumbbels"]),
        
        // Back Workouts Data
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/5/4/0/7/5407.gif","https://gymvisual.com/img/p/1/6/9/3/4/16934.gif","https://gymvisual.com/img/p/5/3/8/6/5386.gif","https://gymvisual.com/img/p/7/3/2/6/7326.gif"], exerciseName: ["reverse grip machine lat pulldown","Barbell Bent Over Wide Grip Row","Pull ups","Cable seated row"], targetMuscle: ["Lats,Biceps,Posterior deltoid","posterior deltoids,Middle and lower traps","lats and biceps","middle back,shoulders, and upper back"], exerciseEquipment: ["Lat pulldown machine","Barbell","Free Body","Seated cable rowing machine"]),
        
        // Upper Leg Workouts Data
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/2/1/6/2/8/21628.gif","https://gymvisual.com/animated-gifs/3422-dumbbell-walking-lunges.html?search_query=Lunges&results=7","https://gymvisual.com/img/p/1/5/0/2/4/15024.gif"], exerciseName: ["barbell squat","Lunges","Leg extensions"], targetMuscle: ["hamstrings, glutes, and lower back muscles","quads, glutes, and hamstrings","quads"], exerciseEquipment: ["Barbell","Dumbells","Leg Extension Machine"]),
        
        // Lower Leg Workouts Data
        ExerciseListDataModel(exerciseGIF: ["https://gymvisual.com/img/p/1/1/7/5/7/11757.gif","https://fitnessprogramer.com/wp-content/uploads/2021/02/Dumbbell-Calf-Raise.gif"], exerciseName: ["Smith Reverse Calf Raises","Body weight Calf Raises"], targetMuscle: ["Calf","Calf"], exerciseEquipment: ["Smith Machine","Dumbbell"])
        
    ]
    
    public static let totalSets: [String] = ["2","3","4","5","6"]
    public static let repRange: [String] = ["6-8","8-10","2-4","2-6","5-10"]
    
}


