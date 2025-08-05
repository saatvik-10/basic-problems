//
//  ViewController.swift
//  stopwatch
//
//  Created by SDC-USER on 05/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minLabel: UILabel!
    @IBOutlet weak var secLabel: UILabel!
    
    var timer: Timer?
    var totalSeconds: NSInteger = 0
    var isRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func updateTimer() {
        totalSeconds += 1
        updateLabelTimer()
    }
    
    func updateLabelTimer() {
        let minutes: NSInteger = totalSeconds / 60
        let seconds: NSInteger = totalSeconds % 60
        secLabel.text = String(format: "%02ld", seconds)
        minLabel.text = String(format: "%02ld", minutes)
    }
    
    @IBAction func startTimer(_ sender: Any) {
        if (timer == nil) {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
    }
    
    
    @IBAction func endTimer(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        isRunning = false
    }
    
    
    @IBAction func resetTimer(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        isRunning = false
        totalSeconds = 0
        updateLabelTimer()
    }
}

