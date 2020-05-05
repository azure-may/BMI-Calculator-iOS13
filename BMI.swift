//
//  BMI.swift
//  BMI Calculator
//
//  Created by Azure May Burmeister on 2/20/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: String
    let message: String
    let color: UIColor
    
    init(v: String, m: String, c: UIColor) {
        value = v
        message = m
        color = c
    }
}
