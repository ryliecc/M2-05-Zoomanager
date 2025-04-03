//
//  FreshWaterFish.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 02.04.25.
//

import Foundation

// Aufgabe 2.7 Weitere Tiere

class FreshWaterFish: Fish {
    
    override init(name: String, age: Double, species: Species, habitat: Habitat = .freshWater) {
        super.init(name: name, age: age, species: species, habitat: habitat)
    }
    
    // Aufgabe 4.1 CustomStringConvertible implementieren
    
    override var description: String {
        return "---Süßwasser-Fisch---\n\(super.description)"
    }
}
