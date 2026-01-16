//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceFaces: [UIImage] = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = diceFaces.randomElement()
        diceImageView2.image = diceFaces.randomElement()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = diceFaces.randomElement()
        diceImageView2.image = diceFaces.randomElement()
    }
}
