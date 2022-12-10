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
    var workoutName: String = ""
    var totalWorkouts: Int = 0
    var bodyPart = ""
    
    // For storing exercises
    var exerciseListData:ExerciseListDataModel = ExerciseListDataModel(exerciseGIF: [], exerciseName: [],targetMuscle: [],exerciseEquipment: [])
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = viewControllerTitle
        configureCard(image: self.image,workoutName: self.workoutName, totalWorkouts: self.totalWorkouts)
        
        // Get exercises with bodypart
        ExerciseListData.getExercises(with: bodyPart) { data in // Data retrived from closure
            
            let decoder = JSONDecoder()
            // Try to parse JSON data
            if let data = data
            {
                do
                {
                   // Decoded JSON Data
                   let exerciseList = try decoder.decode([ExerciseDescription].self, from: data)
                   
                    for exercise in exerciseList
                    {
                        // Appending required data from JSON File
                        self.exerciseListData.exerciseGIF.append(exercise.gifUrl)
                        self.exerciseListData.exerciseName.append(exercise.name)
                        self.exerciseListData.targetMuscle.append(exercise.target)
                        self.exerciseListData.exerciseEquipment.append(exercise.equipment)
                    }
                    
                    
                    DispatchQueue.main.async
                    {
                        // Reloading tableview after getting data
                        self.workoutsListTableView.reloadData()
                    }
                    print(exerciseList.count)
                    /// self.totalWorkouts = exerciseList.count
                }
                catch
                {
                    print(error.localizedDescription)
                }
            }
            
        }

    }
    
    // Method to configure the card view.
    public func configureCard(image:UIImage,workoutName: String,totalWorkouts: Int)
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
        
//        return exerciseListData.exerciseName.count
        return ExerciseList.muscle.count
    }
    
    // Populates data in table view cell.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseListCell", for: indexPath) as! ExerciseListCell
        
//        cell.configureCell(name: exerciseListData.exerciseName[indexPath.row].capitalized, targetMuscle: exerciseListData.targetMuscle[indexPath.row].capitalized, equipment: exerciseListData.exerciseEquipment[indexPath.row].capitalized)
        
        cell.configureCell(name: ExerciseList.exerciseName[indexPath.row], targetMuscle: ExerciseList.muscle[indexPath.row] , equipment: "Barbell")
        return cell
    }
    
    /// Send data to next vc when cell of tableview is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseListCell", for: indexPath) as! ExerciseListCell
        
        // Innstance of ExerciseListVC
        let vc = storyboard?.instantiateViewController(withIdentifier: "gifViewController") as? GifViewController
        
        
        // Populating card view of exercise view controller with selected table view cell.
        cell.passData(vc: vc, name: ExerciseList.exerciseName[indexPath.row], muscle: ExerciseList.muscle[indexPath.row],equipment: ExerciseList.equipment[indexPath.row], gifUrl: ExerciseList.gifURL[indexPath.row])
        
        // To navigate from WorkoutsVC to ExerciseListVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    
}

