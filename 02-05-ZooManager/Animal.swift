//
//  Animal.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 31.03.25.
//

import Foundation

// Aufgabe 1.2 Tier modellieren

class Animal {
    var name: String
    var age: Double
    var isEndangered: Bool = false
    var species: String
    
    init(name: String, age: Double, species: String) {
        self.name = name
        self.age = age
        self.species = species
    }
    
    // Notiz: automatisch generierter initializer hat auch isEndangered mit rein gepackt, habe ich aber wieder raus gelöscht, weil es ja einen default Wert gibt und es dementsprechend nicht immer nötig ist diesen Wert bei Initialisierung festzulegen
    
    // Aufgabe 1.4 Beschreibungs-Methoden definieren
    
    func description() {
        print("Das Tier \(name) ist \(age) Jahre alt und von der Art \(species). Es ist \(isEndangered ? "" : "nicht ")vom Aussterben bedroht.")
    }
}
