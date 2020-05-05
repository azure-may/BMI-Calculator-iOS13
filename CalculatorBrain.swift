//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Azure May Burmeister on 2/20/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var calc: Float = 0.0
    var selector: Int = 1
    var messages: [String] = ["EAT MORE PIES!", "FIT AS A FIDDLE!", "EAT FEWER PIES!"]
    var colors: [UIColor] = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)]
    
    mutating func calculateBMI(w: Float, h: Float) {
        calc = w / pow(h, 2)
        if calc < 18.5 {
            selector = 0
        } else if calc < 24.9 {
            selector = 1
        } else {
            selector = 2
        }
    }
    
    func getResult() -> BMI {
        return (BMI(v: String(format: "%.2f", calc), m: messages[selector], c: colors[selector]))
    }
}
