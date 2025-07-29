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
        if let ageText = ageInput.text, let birthYear = Int(ageText) {
            let calendar = Calendar.current
            let currentYear = calendar.component(.year, from: Date())
            
            if birthYear > currentYear || birthYear < 1900 {
                ageAns.text = "Enter a valid birth year"
            } else {
                let age = currentYear - birthYear
                ageAns.text = "Your age is \(age)"
            }
        } else {
            ageAns.text = "Invalid Input"
        }
    }
}
