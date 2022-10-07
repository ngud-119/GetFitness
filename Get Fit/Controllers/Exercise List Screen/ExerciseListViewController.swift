//
//  WorkoutsListViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 04/10/22.
//

import UIKit

class ExerciseListViewController: UIViewController
{
    
    var workoutCardView: WorkoutCardView!
    @IBOutlet weak var workoutsListTableView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Big chest"
        workoutCardView.configureCard(image: WorkoutScreenConstants.cardImages[0], workoutLevel: WorkoutScreenConstants.workoutLevel[0], workoutName: WorkoutScreenConstants.workoutName[0], equipmentType: WorkoutScreenConstants.equiptmentType[0], workoutType: WorkoutScreenConstants.workoutType[0], totalWorkouts: WorkoutScreenConstants.totalWorkouts[0], totalTime: WorkoutScreenConstants.totalTime[0])
    }
}

// MARK: Extention for exercise list table view

extension ExerciseListViewController: UITableViewDelegate,UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return ExerciseList.exerciseName.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseListCell", for: indexPath) as! ExerciseListCell
        
        cell.configureCell(image: ExerciseList.cellImage[indexPath.row], name: ExerciseList.exerciseName[indexPath.row], totalSets: ExerciseList.totalSets[indexPath.row], repRange: ExerciseList.repRange[indexPath.row])
        
        return cell
    }
}

