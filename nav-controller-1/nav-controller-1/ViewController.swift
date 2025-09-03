//
//  ViewController.swift
//  nav-controller-1
//
//  Created by SDC-USER on 03/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    
    @IBAction func yellowIdentifier(_ sender: Any) {
        if switchOutlet.isOn {
            performSegue(withIdentifier:
                            "yellow", sender: nil)
        }
    }
    
    @IBAction func greenIdentifier(_ sender: Any) {
        if switchOutlet.isOn {
            performSegue(withIdentifier:
                            "green", sender: nil)
        }
    }
}

