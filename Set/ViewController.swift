//
//  ViewController.swift
//  Set
//
//  Created by Abenayan Ketheeswaran on 06/09/2019.
//  Copyright © 2019 Abenayan Ketheeswaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameData = SetModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet var cardButtons: [UIButton]!
    
    
    @IBAction func startGame(_ sender: Any) {
        //let counter = 0
        
        for index in (0...11){
            cardButtons.shuffle()
            gameData.cardDeck.shuffle()
            let button = cardButtons[index]
            for card in gameData.cardDeck{
                button.backgroundColor = card.color
                let text = String(repeating: card.symbol ?? "", count: card.number ?? 1)
                button.setTitle("\(String(describing: text))", for: UIControl.State.normal)
                //UIColor.green.
            }
        }
        
    }
    
}

