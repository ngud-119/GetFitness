//
//  WorkoutsListViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 04/10/22.
//

import UIKit

class ExerciseListViewController: UIViewController
{
    
    @IBOutlet weak var workoutsListTableView: UITableView!
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var transparentImage: UIImageView!
   
    @IBOutlet weak var workoutNameText: UILabel!
    @IBOutlet weak var totalWorkoutsText: UILabel!

    @IBOutlet weak var startButton: UIButton!
    var viewControllerTitle = ""
    var image = UIImage()
    var workoutLevel: String = ""
    var workoutName: String = ""
    var equipmentType: String = ""
    var workoutType:String = ""
    var totalWorkouts: Int = 0
    var totalTime: Int = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = viewControllerTitle
        configureCard(image: self.image, workoutLevel: self.workoutLevel, workoutName: self.workoutName, equipmentType: self.equipmentType, workoutType: self.workoutType, totalWorkouts: self.totalWorkouts, totalTime: self.totalTime)
    }
    
    // Method to configure the card view.
    public func configureCard(image:UIImage,workoutLevel: String,workoutName: String,equipmentType: String,workoutType:String,totalWorkouts: Int,totalTime: Int)
    {
        
        cardImage?.image = image
        workoutNameText?.text = workoutName
        totalWorkoutsText?.text = "Total workouts: \(totalWorkouts)"
        makeRoundedCorners()
    }
    
    // Make the image corners rounded.
    private func makeRoundedCorners()
    {
        cardImage?.layer.cornerRadius = 10.0 // Make cell rounded
        cardImage?.layer.borderWidth = 0.5 // Set a line along the border
        cardImage?.layer.borderColor = UIColor.gray.cgColor // Set the color of border line
        transparentImage?.layer.cornerRadius = 10.0 // Setting card image corner radius
    }
    
    // Action performed when start button is pressed.
    @IBAction func startButtonTapped(_ sender: Any)
    {
        print(viewControllerTitle)
        
        
    }
    
    
}
// MARK: Extention for exercise list table view

extension ExerciseListViewController: UITableViewDelegate,UITableViewDataSource
{
    // Returns the number of cell.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return ExerciseList.exerciseName.count;
    }
    
    // Populates data in table view cell.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseListCell", for: indexPath) as! ExerciseListCell
        
        cell.configureCell(image: ExerciseList.cellImage[indexPath.row], name: ExerciseList.exerciseName[indexPath.row], totalSets: ExerciseList.totalSets[indexPath.row], repRange: ExerciseList.repRange[indexPath.row])
            
        return cell
    }
}

