//
//  ViewController.swift
//  dicee
//
//  Created by Joshua Balogun on 8/15/19.
//  Copyright © 2019 Joshua Balogun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    var radomDiceIndex1: Int = 0
    var radomDiceIndex2: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.rollDice()
        
    }
    
    func rollDice() {
        
        radomDiceIndex1 = Int.random(in: 1...6)
        radomDiceIndex2 = Int.random(in: 1...6)
        
        diceImageView1.image = UIImage(named: "dice\(radomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(radomDiceIndex2)")
    }

    @IBAction func rollBtnClicked(_ sender: Any) {
        self.rollDice()
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.rollDice()
        }
    }
    
}

