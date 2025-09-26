//
//  ViewController.swift
//  delegate-segue
//
//  Created by SDC-USER on 26/09/25.
//

import UIKit
protocol  passData {
    func receiveData(data: String)
}

class ViewController: UIViewController, passData {

    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func receiveData(data: String) {
        dataLabel.text = data
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.delegate = self
        }
    }
}

