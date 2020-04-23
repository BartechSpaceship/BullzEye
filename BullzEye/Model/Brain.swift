//
//  brain.swift
//  BullzEye
//
//  Created by Bartek on 4/20/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation
import UIKit

struct Brain {
    var results: Results?
    
    
    var randomValue = Int.random(in: 0...100)
    
    func getRandomValue() -> Int {
        let randomNumberBeAString = Int(randomValue)
        return randomNumberBeAString
    }
    
    func getAdvice() -> String{
        return results?.advice ?? "No Advice"
    }
   
    func getColor() -> UIColor {
        return results?.color ?? #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    mutating func calculateSlider(slider: Int) {
        if slider < randomValue {
            results =  Results(advice: "Try aiming a little higher, you've shot a \(slider)", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        } else if slider > randomValue{
            results = Results(advice: "Try aiming a little lower, you've shot a \(slider)", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        } else if slider == randomValue {
           
            results = Results(advice: "Congratulations! You've hit the BullzEye!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else {
            print("Error")
        }
    }
    
    
}
