//
//  ViewController.swift
//  WorldWarSKE
//
//  Created by Sain-R Edwards Jr. on 7/5/17.
//  Copyright © 2017 Sain-R Edwards Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCardImageView: UIImageView!
    @IBOutlet weak var leftCardScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightCardImageView: UIImageView!
    @IBOutlet weak var rightCardScoreLabel: UILabel!
    var rightScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButton(_ sender: UIButton) {
        
        // Randomize left card number
        let leftNumber = Int(arc4random_uniform(13))
        
        // Assign left card image with random number
        leftCardImageView.image = UIImage(named: cardNames[leftNumber])
        
        // Randomize right card number
        let rightNumber = Int(arc4random_uniform(13))
        
        // Assign right card image with random number
        rightCardImageView.image = UIImage(named: cardNames[rightNumber])
        
        // Determine score
        if leftNumber > rightNumber {
            // Increment left score
            leftScore += 1
            leftCardScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            // It's a tie!
        }
        else {
            // Increment right score
            rightScore += 1
            rightCardScoreLabel.text = String(rightScore)
        }
        
        // Add logic for winner and UIAlert
        if leftScore == 20 || rightScore == 20 {
            
            let alertContrllr = UIAlertController(title: "Game Over", message: nil, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Start Over", style: .destructive)
            
            alertContrllr.addAction(alertAction)
            self.present(alertContrllr, animated: true, completion: nil)
            
            leftScore = 0; rightScore = 0
            
            leftCardScoreLabel.text = String(leftScore); rightCardScoreLabel.text = String(rightScore)
            
        }
        
    }

}
