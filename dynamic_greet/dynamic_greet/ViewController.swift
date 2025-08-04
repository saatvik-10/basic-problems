//
//  ViewController.swift
//  dynamic_greet
//
//  Created by SDC-USER on 04/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorSegment: UISegmentedControl!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    @IBOutlet weak var insertNameLabel: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var greetingLabelSizeChanger: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "No one to Greet!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func genderSegmentAction(_ sender: UISegmentedControl) {
        if genderSegment.selectedSegmentIndex == 0 {
            greetingLabel.text = "Hello Mr. \(insertNameLabel.text ?? " ")"
        } else {
            greetingLabel.text = "Hello Ms. \(insertNameLabel.text ?? " ")"
        }
    }
    
    @IBAction func colorSegmentAction(_ sender: UISegmentedControl) {
        let clrSegment = colorSegment.selectedSegmentIndex
        
        switch clrSegment {
            case 0:
                greetingLabel.textColor = .red
                
            case 1:
                greetingLabel.textColor = .green
                
            case 2:
                greetingLabel.textColor = .blue
                
            default:
                greetingLabel.textColor = .black
        }
    }
    @IBAction func greetingLabelSizeChangerAction(_ sender: UISlider) {
        let fontSize = CGFloat(greetingLabelSizeChanger.value)
        greetingLabel.font = UIFont.systemFont(ofSize: fontSize)
    }
    
    @IBAction func greetButton(_ sender: UIButton) {
        let gender = genderSegment.selectedSegmentIndex == 0 ? "Mr." : "Mrs."
        greetingLabel.text = "Hello \(gender) \(insertNameLabel.text ?? " ")"
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        greetingLabel.text = "No one to Greet!"
    }
}

