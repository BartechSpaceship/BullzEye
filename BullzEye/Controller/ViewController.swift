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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Change the label to display, Try to get this number %
        
        
       goalLabel.text = "Your goal is to hit \(brain.randomValue)"
        
        
    }
   //MARK: - Buttons
    
    @IBAction func shootButton(_ sender: UIButton) {
        sender.isSelected = false
       
        
        slider = Int(sliderValue.value)
        brain.calculateSlider(slider: slider)
        updateUI()
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
        
        
    }
    

    @IBAction func howToButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "BullzEye Instructions", message: "The slider goes from 0 to 100 and you have to guess where the number is located. Each time you guess the right number your score goes up by one, get 10 points and you realise you just wasted your life ", preferredStyle: .alert)
        
        self.present(alert, animated: true, completion:{
           alert.view.superview?.isUserInteractionEnabled = true
           alert.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dismissOnTapOutside)))
        })
    }
    @objc func dismissOnTapOutside(){
        self.dismiss(animated: true, completion: nil)
    }
    
//MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "goToResult" {
               let destinationVC = segue.destination as! ResultsViewController
               
               destinationVC.color = brain.getColor()
               destinationVC.advice = brain.getAdvice()
           
       
               
               
           }
       }//MARK: - Updates the current score and number
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
