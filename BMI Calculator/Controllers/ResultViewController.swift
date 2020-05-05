//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Azure May Burmeister on 2/19/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmi?.value
        messageLabel.text = bmi?.message
        view.backgroundColor = bmi?.color
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
