//
//  ViewController.swift
//  BullzEye
//
//  Created by Bartek on 2/28/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bullLabel: UILabel!
    @IBOutlet weak var valueBar: UISlider!
    
    var bullbrain = BullzBrain()
    
    var valueBarTransfer = "0"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    @IBAction func guessTheNumber(_ sender: UIButton) {
        
        valueBarTransfer = String(format: "%.0f", valueBar.value)
        
        bullbrain.calculateValue(value: valueBarTransfer)
        
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    @IBAction func getMoreInfo(_ sender: UIButton) {
        
        
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            //destinationVC.labelValue = valueBarTransfer
            destinationVC.value = bullbrain.getBullValue()
            destinationVC.advice = bullbrain.getAdvice()
            destinationVC.color = bullbrain.getColor()
            
            
            
            

        }
        
    }
    func updateUI() {
        //let randomInt = Int.random(in: 1...100)
        bullLabel.text = "Try to get this number \(bullbrain.random)"
    }
    
}

