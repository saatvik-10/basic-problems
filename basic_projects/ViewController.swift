//
//  ViewController.swift
//  learning_xCode
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempOutput: UILabel!
    @IBOutlet weak var tempLabel: UITextField!
    @IBOutlet weak var checkNumOutput: UILabel!
    @IBOutlet weak var checkNum: UITextField!
    @IBOutlet weak var moodOutput: UILabel!
    @IBOutlet weak var label_field: UILabel!
    @IBOutlet weak var name_field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func greetButton(_ sender: Any) {
        label_field.text = "HELLO " + name_field.text!
    }
    
    @IBAction func happyFace(_ sender: Any) {
        moodOutput.text = "😁"
    }
    
    @IBAction func sadFAce(_ sender: Any) {
        moodOutput.text = "😞"
    }
    
    @IBAction func cryFace(_ sender: Any) {
        moodOutput.text = "😭"
    }
    
    @IBAction func checkNumBtn(_ sender: Any) {
        if let num = Int(checkNum.text!) {
                if num % 2 == 0 {
                    checkNumOutput.text = "Even"
                } else {
                    checkNumOutput.text = "Odd"
                }
            } else {
                checkNumOutput.text = "Please enter a number"
            }
    }
    
    @IBAction func tempConvert(_ sender: Any) {
        if let temp = Double(tempLabel.text!) {
            let tempCel = temp
        
            let ans = tempCel * (9.0 / 5.0) + 32.0
            
            tempOutput.text = "Output is \(ans) F"
        } else {
            tempLabel.text = "Please enter a valid temperature"
        }
    }
}

