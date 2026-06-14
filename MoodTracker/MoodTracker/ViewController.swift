//
//  ViewController.swift
//  MoodTracker
//
//  Created by Courtney Pross on 6/5/26.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var feelingLabel: UILabel!
    
    @IBOutlet weak var moodOnDate: UILabel!
    
    var moodFace: String =  ""
    var dateString : String = ""
    
    var moodList: [String] = ["Very Sad 😢", "Sad 🙁", "Neutral 😐", "Happy 🙂", "Very Happy 😄"]
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moodSlider(_ sender: UISlider) {
        let moodValue = Int(sender.value)
        var mood = ""

          if moodValue > -1 && moodValue < 21 {
              mood = moodList[0]

          }
          else if moodValue > 20 && moodValue < 41 {
              mood = moodList[1]

          }
          else if moodValue > 40 && moodValue < 61 {
              mood = moodList[2]

          }
          else if moodValue > 60 && moodValue < 81 {
              mood = moodList[3]

          }
          else if moodValue > 80 && moodValue < 101 {
              mood = moodList[4]
          }
        
        moodFace = String(mood.suffix(1))
        feelingLabel.text =  "Feeling: " + mood
    }
    
    @IBAction func date(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        dateString = formatter.string(from: sender.date)
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        moodOnDate.text = "On " + dateString + " you felt: " + moodFace
        
        
    }
}

