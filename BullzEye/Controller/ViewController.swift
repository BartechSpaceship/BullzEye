//
//  ViewController.swift
//  BullzEye
//
//  Created by Bartek on 2/28/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var count = 0
    var brain = Brain()
    var slider = 0
    
    
    
    var randy = Int.random(in: 0...100)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Change the label to display, Try to get this number %
        
        
       goalLabel.text = "Your goal is to hit \(brain.randomValue)"
        
        
    }
   
    
    @IBAction func shootButton(_ sender: UIButton) {
        
       
        
        slider = Int(sliderValue.value)
        brain.calculateSlider(slider: slider)
         updateUI()
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    @IBAction func howToButton(_ sender: UIButton) {
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "goToResult" {
               let destinationVC = segue.destination as! ResultsViewController
               
               destinationVC.color = brain.getColor()
               destinationVC.advice = brain.getAdvice()
            destinationVC.randomNumber = brain.randomValue
            destinationVC.sliderValue = slider
               
               
           }
       }
    func updateUI() {
         
        
       
        if slider == brain.randomValue {
            count += 1
            scoreLabel.text = "Score: \(count)"
            brain.randomValue = Int.random(in: 0...100)
            
            goalLabel.text = "Your goal is to hit \(brain.randomValue)"
        } else {
            goalLabel.text = "Your goal is to hit \(brain.randomValue)"
        }
        
        
        
   
    
}
}
