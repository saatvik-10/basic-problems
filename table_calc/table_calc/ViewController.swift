//
//  ViewController.swift
//  table_calc
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableOutput: UILabel!
    @IBOutlet weak var tableInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tableCalc(_ sender: Any) {
        if let text = tableInput.text, let num = Int(text) {
            var ans: String = ""
            for i in 1...10 {
                ans += "\(num) x \(i) = \(num * i)\n"
            }
            tableOutput.text = ans
            
        } else {
            tableOutput.text = "Invalid Input"
        }
    }
}

