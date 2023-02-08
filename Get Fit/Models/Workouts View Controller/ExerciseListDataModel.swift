//
//  ExerciseListDataModel.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 29/11/22.
//

import Foundation

///Struct for storing exercise list data.
struct ExerciseListDataModel: Codable
{
    var exerciseGIF: [String]
    var exerciseName: [String]
    var targetMuscle: [String]
    var exerciseEquipment: [String]
}
