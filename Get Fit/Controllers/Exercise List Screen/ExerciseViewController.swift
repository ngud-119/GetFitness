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
    
    @IBOutlet weak var stopWorkoutButton: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        print("nextSetButtonTapped...")
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
