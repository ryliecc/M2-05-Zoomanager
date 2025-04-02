//
//  Snake.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 01.04.25.
//

import Foundation

// Aufgabe 2.5 Schlange

final class Snake: Reptile {
    var isVenomous: Bool
    
    init(name: String, age: Double, species: Species, habitat: Habitat, isVenomous: Bool) {
        self.isVenomous = isVenomous
        super.init(name: name, age: age, species: species, habitat: habitat)
    }
    
    func bite() {
        if isVenomous {
            print("Schlange \(name) beißt zu! Vorsicht, giftig!")
        }
    }
    
    override func description() {
        print("---Schlange---")
        super.description()
        bite()
    }
}
