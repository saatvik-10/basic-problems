//
//  ViewController.swift
//  intro_ui_kit
//
//  Created by SDC-USER on 01/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var parentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let child = UIView(frame: CGRect(x: -25, y: -30, width: 100, height: 100))
        child.backgroundColor = .red
        parentView.addSubview(child)
    }

    @IBAction func toggleButton(_ sender: UIButton) {
        parentView.clipsToBounds.toggle()
        sender.setTitle(parentView.clipsToBounds ? "Disable" : "Enable", for: .normal)
    }
    
}

