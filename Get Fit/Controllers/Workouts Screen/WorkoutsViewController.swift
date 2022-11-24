//
//  WorkoutsViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 02/10/22.
//

import UIKit

class WorkoutsViewController: UIViewController
{
    
    @IBOutlet weak var workoutsCardTableView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // title = "Workouts"
        self.tabBarController?.navigationItem.hidesBackButton = true // Hide back button of this viewcontroller.
    }
}
    
// MARK: TableView Extention
// Extention for implementing table view
// Conformimg to the UITableViewDelegate and UITableViewDataSource protocols to perform important operation with table view.
extension WorkoutsViewController: UITableViewDelegate,UITableViewDataSource
{
    
    // For creating desired rows in the table view.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return WorkoutScreenConstants.cardImages.count // Return total numbers of images
    }
    
    // Returns what cell are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // Use to populate different parameters of custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        
        // Populating table view cells.
        cell.configure(image: WorkoutScreenConstants.cardImages[indexPath.row], workoutName: WorkoutScreenConstants.workoutName[indexPath.row], totalWorkouts: WorkoutScreenConstants.totalWorkouts[indexPath.row])
        
        return cell
    }
    
    // To navigate to exercise list vc
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        
        // Innstance of ExerciseListVC
        let vc = storyboard?.instantiateViewController(withIdentifier: "ExerciseListViewController") as? ExerciseListViewController
        
        
        // Populating card view of exercise view controller with selected table view cell.
        cell.passDataToExerciseListVC(
            
            vc: vc,
            VCTitle: WorkoutScreenConstants.workoutName[indexPath.row],
            image: WorkoutScreenConstants.cardImages[indexPath.row],
            workoutName: WorkoutScreenConstants.workoutName[indexPath.row],
            totalWorkouts:WorkoutScreenConstants.totalWorkouts[indexPath.row]
        )
        
        // To navigate from WorkoutsVC to ExerciseListVC
        self.navigationController?.pushViewController( vc!, animated: true)
    }
}
