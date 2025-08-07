//
//  ViewController.swift
//  lightProject
//
//  Created by SDC-USER on 07/08/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        extractedFunc()
    }

    var lightOn = true
    
    fileprivate func extractedFunc() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func toggleBtn(_ sender: UIButton) {
        lightOn.toggle()
        
        extractedFunc()
    }
    
}

