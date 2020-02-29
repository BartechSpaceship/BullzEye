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
    
    var valueBarTransfer = "0.0"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomInt = Int.random(in: 1...100)
        bullLabel.text = "Try to get this number \(randomInt)"
        
    }
    @IBAction func guessTheNumber(_ sender: UIButton) {
        
        valueBarTransfer = String(valueBar.value)
        print(valueBarTransfer)
        
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    @IBAction func getMoreInfo(_ sender: UIButton) {
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
           // destinationVC.labelValue = valueBarTransfer










        }
        
    }
    
    
}

