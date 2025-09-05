//
//  ViewController.swift
//  bmi_calculator
//
//  Created by SDC-USER on 05/09/25.
//

import UIKit

class BMIViewController: UIViewController {
    var finalBMI : Double = 0.0
    @IBOutlet weak var WeightOutlet: UITextField!
    
    @IBOutlet weak var HeightOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BMI_ButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "calculateBMI", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let heightText = HeightOutlet.text,
           let weightText = WeightOutlet.text,
           let height = Double(heightText),
           let weight = Double(weightText),
           height > 0 {
            
            let bmi = weight / (height * height)
            finalBMI = bmi
            
            if let destination = segue.destination as? CalculateViewController {
                destination.result = String(format: "%.2f", bmi)
            }
        }
    }
}

