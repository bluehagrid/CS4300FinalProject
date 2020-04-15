//
//  Card.swift
//  CS4300FinalProject
//
//  Created by Jacob Jackson on 4/15/20.
//  Copyright © 2020 Jacob Jackson. All rights reserved.
//

import UIKit

class Card {
    var cardName: String
    var manaCost = 1
    var attackValue = 1
    var defenseValue = 0
    var drawValue = 0
    var maxHandSize = 5
    var imageViewName: String = "MagicMissle.png"
    
    init(cardName: String, manaCost: Int, attackValue: Int, defenseValue: Int, drawValue: Int, maxHandSize: Int, imageViewName: String) {
        self.cardName = cardName
        self.manaCost = manaCost
        self.attackValue = attackValue
        self.defenseValue = defenseValue
        self.drawValue = drawValue
        self.maxHandSize = maxHandSize
        self.imageViewName = imageViewName
    }
    
    func useSelf(theHero: Player, theBaddie: Enemy){
        theHero.currentMana = theHero.currentMana - self.manaCost
        theHero.currentHealth = theHero.currentHealth + self.defenseValue
        theBaddie.currentHealth = theBaddie.currentHealth - self.attackValue
    }
}
