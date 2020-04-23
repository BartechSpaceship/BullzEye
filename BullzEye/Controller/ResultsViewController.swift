//
//  ResultsViewController.swift
//  BullzEye
//
//  Created by Bartek on 2/29/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit
import Foundation

class ResultsViewController: UIViewController {
    
   
    
    var sliderValue: Int?
    var advice: String?
    var color: UIColor?
   // var sliderValue = 0
 
    var randomNumber: Int?
    

    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        scoreLabel.text = advice

        view.backgroundColor = color
        
        
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
}
