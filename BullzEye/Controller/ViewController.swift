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
    
   
    var brain = Brain()
    var slider = 0
    
    
    
    var randy = Int.random(in: 0...100)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Change the label to display, Try to get this number %
        
        goalLabel.text = "Your goal is to hit \(brain.randomValue)"
        
        
        
        
    }
   
    
    @IBAction func shootButton(_ sender: UIButton) {
        
        //slider = Int(sliderValue.value)
        slider = Int(sliderValue.value)
        
        brain.calculateSlider(slider: slider)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    @IBAction func howToButton(_ sender: UIButton) {
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "goToResult" {
               let destinationVC = segue.destination as! ResultsViewController
               
               destinationVC.color = brain.getColor()
               destinationVC.advice = brain.getAdvice()
               
               
               
           }
       }
//    func updateUI() -> String {
//        //Will return the updated goalLabel if randomValue == Slider
//    }
 
   
    
}
