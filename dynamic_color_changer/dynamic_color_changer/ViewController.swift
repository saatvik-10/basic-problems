//
//  ViewController.swift
//  dynamic_color_changer
//
//  Created by SDC-USER on 04/08/25.
//

import UIKit

class ViewController: UIViewController {
    var red : CGFloat = 0
    var green : CGFloat = 0
    var blue : CGFloat = 0
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        red = CGFloat(redSlider.value)
        green = CGFloat(greenSlider.value)
        blue = CGFloat(blueSlider.value)
        
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func redSwitch(_ sender: UISwitch) {
        redSlider.isEnabled = sender.isOn
        let redTemp = red
        if sender.isOn == false {
            redSlider.value = 0
            red = 0
            view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        } else {
            view.backgroundColor = UIColor(red: redTemp, green: green, blue: blue, alpha: 1.0)
            redSlider.value = Float(redTemp)
        }
    }
    
    @IBAction func greenSwitch(_ sender: UISwitch) {
        greenSlider.isEnabled = sender.isOn
        let greenTemp = green
        if sender.isOn == false {
            greenSlider.value = 0
            green = 0
            view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        } else {
            view.backgroundColor = UIColor(red: red, green: greenTemp, blue: blue, alpha: 1.0)
            greenSlider.value = Float(greenTemp)
        }
    }
    
    @IBAction func blueSwitch(_ sender: UISwitch) {
        blueSlider.isEnabled = sender.isOn
        let blueTemp = blue
        if sender.isOn == false {
            blueSlider.value = 0
            blue = 0
            view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        } else {
            view.backgroundColor = UIColor(red: red, green: green, blue: blueTemp, alpha: 1.0)
            blueSlider.value = Float(blueTemp)
        }
    }
}

