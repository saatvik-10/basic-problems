//
//  ViewController.swift
//  common_input_control
//
//  Created by SDC-USER on 04/08/25.
//

import UIKit

class ViewController: UIViewController {
    var count:Int = 0
    @IBOutlet weak var test_3: UILabel!
    @IBOutlet weak var test_2: UILabel!
    @IBOutlet weak var test_1: UILabel!
    @IBOutlet weak var test: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        test.text = "\(0)"
        test_1.text = "Disconnected"
        test_2.text = "Vol: 0"
        // Do any additional setup after loading the view.
    }

    @IBAction func btn1(_ sender: UIButton) {
        test.text = "\(count)"
        count += 1
    }
    
    @IBAction func gesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        test_3.text = "\(location)"
        
        let dot = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        dot.center = location //assigning a circle
        dot.backgroundColor = .blue
        dot.layer.cornerRadius = 5
        
        view.addSubview(dot)
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        test_1.text = sender.isOn ? "Connected" : "Disconnected"
    }
    
    @IBAction func slider(_ sender: UISlider) {
        test_2.text = String(format: "%.0f", sender.value)
    }
}

