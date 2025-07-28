//
//  ViewController.swift
//  age_calc
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dob: UITextField!
    
    @IBOutlet weak var umar: UILabel!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var ageAns: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ageCalc(_ sender: Any) {
        if let age = ageInput.text, let intAge = Int(age) {
            let curr = 2025
            
            if curr <= intAge {
                ageAns.text = "Enter a valid age"
            } else {
                let ans = curr - intAge
                ageAns.text = "Your age is \(ans)"
            }
        } else {
            ageAns.text = "Invalid Input"
        }
    }
    
}

