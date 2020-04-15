//
//  Player.swift
//  CS4300FinalProject
//
//  Created by Jacob Jackson on 4/15/20.
//  Copyright © 2020 Jacob Jackson. All rights reserved.
//

import UIKit

class Player {
    var maxHealth = 30
    var currentHealth = 30
    var maxMana = 3
    var currentMana = 3
    var imageViewName = "Wizard.png"
    
    init(maxHealth: Int, currentHealth: Int, maxMana: Int, currentMana: Int, imageViewName: String) {
        self.maxHealth = maxHealth
        self.currentHealth = currentHealth
        self.maxMana = maxMana
        self.currentMana = currentMana
        self.imageViewName = imageViewName
        
    }
}
