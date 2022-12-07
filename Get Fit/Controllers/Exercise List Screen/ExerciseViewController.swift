//
//  ExerciseViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 09/10/22.
//

import UIKit

class ExerciseViewController: UIViewController
{

    @IBOutlet weak var exerciseNameLabel: UILabel!
    @IBOutlet weak var exerciseCompletedLabel: UILabel!
    @IBOutlet weak var totalExerciseLabel: UILabel!
    @IBOutlet weak var tutorialVideoView: UIView!
    @IBOutlet weak var currentExerciseLabel: UILabel!
    @IBOutlet weak var nextExerciseLabel: UILabel!
    @IBOutlet weak var circularProgressView: CircularProgressView!
    @IBOutlet weak var totalRepsLabel: UILabel!
    @IBOutlet weak var nextSetButton: UIButton!
    @IBOutlet weak var nextExerciseButton: UIButton!
    
    var name: String = ""
    @IBOutlet weak var stopWorkoutButton: UIButton!
    var strokeVal: CGFloat = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print(name)
        exerciseNameLabel.text = name
        // Updating header section
    
        // Update Middle Section
    
        // Update Footer Section
        
        // updateFooterSection(completedSet: 0, totalSet: ExerciseList.totalSets[0], totalReps: ExerciseList.repRange[0])
        // Do any additional setup after loading the view.
    }
    
    // Function to update header section
    func updateHeader(exerciseName: String,completedExercise: Int,totalExercise: Int)
    {
        self.exerciseNameLabel.text = exerciseName
        self.exerciseCompletedLabel.text = "\(completedExercise)"
        self.totalExerciseLabel.text = "\(totalExercise)"
    }
    
    // Function to update middle section
    func updateMiddleSection(videoView: UIView,exerciseName: String, nextExercise: String)
    {
        self.currentExerciseLabel.text = exerciseName
        self.nextExerciseLabel.text = "Next: \(nextExercise)"
    }
    
    // Function to update to footer section
    func updateFooterSection(completedSet: Int, totalSet: Int,totalReps: String)
    {
        circularProgressView.updateSetCount(completedSet: completedSet, totalSets: totalSet)
        self.totalRepsLabel.text = "\(totalReps) reps"
    }
    
    // Function to goto workouts ciew controller when stop workout tapped.
    func backToWorkoutsVC()
    {
        let storyboard = UIStoryboard(name: Storyboards.Name.TabBar, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: Storyboards.VCID.TabBarController)
        
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(vc)
    }
    
    @IBAction func nextSetButtonTapped(_ sender: UIButton)
    {
        strokeVal += 1
        let stroke = strokeVal/3
        
        if stroke <= 1
        {
            print(stroke)
            circularProgressView.progress = stroke
        }
        else
        {
            strokeVal = 0
            circularProgressView.progress = 0
        }
       
        

    }
    
    @IBAction func nextExerciseButtonTapped(_ sender: UIButton)
    {
        print("nextExerciseButtonTapped...")
    }
    
    @IBAction func stopWorkoutTapped(_ sender: UIButton)
    {
        backToWorkoutsVC()
    }
   
}
