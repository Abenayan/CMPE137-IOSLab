//
//  Card.swift
//  Set
//
//  Created by Abenayan Ketheeswaran on 06/09/2019.
//  Copyright © 2019 Abenayan Ketheeswaran. All rights reserved.
//

import Foundation
import UIKit
class Card{
    init(){
        self.createDeck()
    }
    var colors: [UIColor] = [UIColor.red, UIColor.green, UIColor.blue]
    var symbols = ["▲", "●", "■"]
    var number = [1,2,3]
    var shading = ["clear","matte", "striped"]

    
    
    var deckOfCards:[Card.setCard] = []
    
    struct setCard{
        var color: UIColor?
        var symbol: String?
        var number: Int?
        var shading: String?
        var faceUp: Bool = false
    }
    
    func getDeck() -> [Card.setCard]{
        return deckOfCards
    }
    
    func createDeck(){
        for c in colors{
            for s in symbols{
                for n in number{
                    for sh in shading{
                        var newCard = setCard()
                        newCard.color = c
                        newCard.symbol = s
                        newCard.number = n
                        newCard.shading = sh
                        deckOfCards.append(newCard)
                    }
                }
            }
        }
        deckOfCards.shuffle()
    }
    
    
}
