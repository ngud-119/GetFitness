//
//  EerciseViewController.swift
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
    @IBOutlet weak var circularProgressView: UIView!
    @IBOutlet weak var totalRepsLabel: UILabel!
    @IBOutlet weak var nextSetButton: UIButton!
    @IBOutlet weak var nextExerciseButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
