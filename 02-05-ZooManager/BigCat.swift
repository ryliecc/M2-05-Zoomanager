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
    
    init(name: String, age: Double, isEndangered: Bool = false, species: Species, canRoar: Bool) {
        self.canRoar = canRoar
        super.init(name: name, age: age, isEndangered: isEndangered, species: species)
    }
    
    func roar() {
        if canRoar {
            print("Raubkatze \(name) brüllt!")
        }
    }
    
    override func description() {
        print("---Raubkatze---")
        super.description()
        roar()
    }
}
