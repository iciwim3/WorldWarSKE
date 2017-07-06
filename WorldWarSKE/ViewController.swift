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
    
    @IBOutlet weak var rightCardImageView: UIImageView!
    @IBOutlet weak var rightCardScoreLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButton(_ sender: UIButton) {
    }

}

