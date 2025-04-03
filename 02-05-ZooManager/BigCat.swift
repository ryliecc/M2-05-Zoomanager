//
//  BigCat.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 01.04.25.
//

import Foundation

// Aufgabe 2.4 Raubkatze

class BigCat: Mammal {
    var canRoar: Bool
    
    init(name: String, age: Double, species: Species, canRoar: Bool, habitat: Habitat = .savanna, diet: Diet = .carnivore) {
        self.canRoar = canRoar
        super.init(name: name, age: age, species: species, habitat: habitat, diet: diet)
    }
    
    func roar() {
        if canRoar {
            print("Raubkatze \(name) brüllt!")
        }
    }
    
//    override func description() {
//        print("---Raubkatze---")
//        super.description()
//        roar()
//    }
    
    // Aufgabe 4.1 CustomStringConvertible implementieren
    
    override var description: String {
        return "---Raubkatze---\n\(super.description)"
    }
}
