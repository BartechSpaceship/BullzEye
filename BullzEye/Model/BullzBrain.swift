//
//  BullzBrain.swift
//  BullzEye
//
//  Created by Bartek on 3/1/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit

struct BullzBrain {
    
    var bullsEye: BullzEye?
    var userInput: Float?
    
    func getBullValue() -> String {
        let valueToOneDecimalPlace = String(format: "0.1f", bullsEye?.value ?? "0.0")
        return valueToOneDecimalPlace
    }
    
    func getAdvice() -> String {
        return bullsEye?.advice ?? "No Advice" // right now its nil, we will give it value later
    }
    
    func getColor() -> UIColor {
        return bullsEye?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) //this is also made for later
    }
    
    mutating func calculateValue(value: String){
        let random = Int.random(in: 1...100)
        if bullsEye?.value ?? 0 < random{
            bullsEye = BullzEye(value: bullsEye?.value ?? 0, advice: "Aim higher if you can, you scored \(random)", color: #colorLiteral(red: 0.6313379407, green: 0, blue: 0.03872347623, alpha: 1))
        }else if bullsEye?.value ?? 0 > random{
            bullsEye = BullzEye(value: bullsEye?.value ?? 0, advice: "Go Eat one", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        }else {
            bullsEye = BullzEye(value: random, advice: "YOU WIN!", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
    }
    
    
    
}
