//
//  CalculateViewController.swift
//  bmi_calculator
//
//  Created by SDC-USER on 05/09/25.
//

import UIKit

class CalculateViewController: UIViewController {
    var result : String?
    @IBOutlet weak var BMI_Result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMI_Result.text = result ?? ""
        // Do any additional setup after loading the view.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
        if let resVal = Double(result ?? "") {
            if resVal > 25.0 {
                view.backgroundColor = .red
            } else if resVal < 18.5 {
                view.backgroundColor = .yellow
            } else {
                view.backgroundColor = .green
            }
        }
    }
}
