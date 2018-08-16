//
//  ViewController.swift
//  Concentration
//
//  Created by Parnak on 21/6/18.
//  Copyright © 2018 Parnak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var FlipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(FlipCount)"

        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var CardButtons: [UIButton]!
    
    var emojichoise = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        FlipCount+=1
        if let cardNumber = CardButtons.index(of: sender){
            flipCard(withEmoji: emojichoise[cardNumber], on: sender)
            print("cardNumber = \(cardNumber)")

        }
        else{
            print("chosen card not in UI")
        }
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }
        else{
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

