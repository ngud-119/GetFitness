//
//  WorkoutsViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 02/10/22.
//

import UIKit

// Conformimg to the UITableViewDelegate and UITableViewDataSource protols to perform important operation with table view.
class WorkoutsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    @IBOutlet weak var workoutsCardTableView: UITableView!
    
    let workoutLevel: [String] = ["BEGINNER LEVEL","MODRATE LEVEL","ADVANCE LEVEL"] // Array for storing the workout level text.
    let workoutName: [String] = ["Strong and Big Chest","Back Workout","Bicep Workout"] // Array for stroing the workout name.
    let equiptmentType: [String] = ["Full Equipment","No Equipment","Body Weight"] // Array for strting the equiptment label.
    let workoutType: [String] = ["Strength","Endurance","Weight"] // Array for storing the workout name.
    let totalWorkouts: [Int] = [6,7,5] // Array for storing total workouts.
    let totalTime: [Int] = [45,55,60] // Array for storing total time of workout.
    let cardImages: [UIImage] = [UIImage(named: "Chest.jpeg")!,UIImage(named: "Back.jpeg")!,UIImage(named: "Biceps.jpeg")!] // Array for storing the card images.
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.tabBarController?.navigationItem.hidesBackButton = true // Hide back button of this viewcontroller.
    }
    
    // For creating desired rows in the table view.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return cardImages.count // Return total numbers of images
    }
    
    // Returns what cell are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // Use to populate different parameters of custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        
        cell.configure(image: cardImages[indexPath.row], workoutLevel: workoutLevel[indexPath.row], workoutName: workoutName[indexPath.row], equipmentType: equiptmentType[indexPath.row], workoutType: workoutType[indexPath.row], totalWorkouts: totalWorkouts[indexPath.row], totalTime: totalTime[indexPath.row])
        
        return cell
    }
}
