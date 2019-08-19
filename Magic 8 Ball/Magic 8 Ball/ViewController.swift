//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Joshua Balogun on 8/19/19.
//  Copyright © 2019 Joshua Balogun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.newBallIImage()
        
    }
    
    func newBallIImage() {
        randomBallNumber = Int.random(in: 0..<5)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        self.newBallIImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        self.newBallIImage()
    }
    
}

