//
//  ViewController.swift
//  apple-pie
//
//  Created by SDC-USER on 23/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["Messi", "Ronaldo", "Neymar", "Football", "GOAT"]
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLoses = 0

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet var letterButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Loses: \(totalLoses)"
        
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}

