//
//  SecondViewController.swift
//  delegate-segue
//
//  Created by SDC-USER on 26/09/25.
//

import UIKit

class SecondViewController: UIViewController {
    var delegate: passData?

    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnClicked(_ sender: Any) {
        delegate?.receiveData(data: input.text ?? "N/A")
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
