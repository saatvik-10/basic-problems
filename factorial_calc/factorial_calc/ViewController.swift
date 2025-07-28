//
//  ViewController.swift
//  factorial_calc
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numOutput: UILabel!
    @IBOutlet weak var numInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func numCalc(_ sender: Any) {
        let num = Int(numInput.text ?? "") ?? 0
        
        if num < 1 {
            numOutput.text = "0"
        } else {
            var res = 1;
            
            for i in 1...num {
                res *= i
            }
            
            numOutput.text = "\(res)"
        }
    }
}

