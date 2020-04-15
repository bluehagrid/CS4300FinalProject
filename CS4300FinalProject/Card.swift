//
//  Card.swift
//  CS4300FinalProject
//
//  Created by Jacob Jackson on 4/15/20.
//  Copyright © 2020 Jacob Jackson. All rights reserved.
//

import UIKit

class Card {
    var name: String
    var manaCost = 1
    var attackValue = 1
    var defenseValue = 0
    
    
    init(name: String, manaCost: Int) {
        self.name = name
        self.manaCost = manaCost
    }
}
