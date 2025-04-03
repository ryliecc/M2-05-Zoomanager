//
//  Tiger.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 02.04.25.
//

import Foundation

// Aufgabe 2.7 Weitere Tiere

class Tiger: BigCat {
    
    init(name: String, age: Double, species: Species = .tiger, canRoar: Bool = true, habitat: Habitat = .rainforest) {
        super.init(name: name, age: age, species: species, canRoar: canRoar, habitat: habitat)
    }
    
    // Aufgabe 4.1 CustomStringConvertible implementieren
    
    override var description: String {
        return "---Tiger---\n\(super.description)"
    }
}
