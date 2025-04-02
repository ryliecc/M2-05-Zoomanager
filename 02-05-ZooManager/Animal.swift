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
    var isEndangered: Bool
    var species: Species
    
    init(name: String, age: Double, isEndangered: Bool = false, species: Species) {
        self.name = name
        self.age = age
        self.isEndangered = isEndangered
        self.species = species
    }
    
    // Notiz: automatisch generierter initializer hat auch isEndangered mit rein gepackt, habe ich aber wieder raus gelöscht, weil es ja einen default Wert gibt und es dementsprechend nicht immer nötig ist diesen Wert bei Initialisierung festzulegen
    
    // Aufgabe 1.4 Beschreibungs-Methoden definieren
    
    func description() {
        print("Das Tier \(name) ist \(age) Jahre alt und von der Art \(species.rawValue). Es ist \(isEndangered ? "" : "nicht ")vom Aussterben bedroht.")
    }
    
    // Aufgabe 3.1 Computed Properties rund um name
    
    var upperCaseName: String {
        name.uppercased()
    }
    
    var descriptionShort: String {
        "\(name), \(age) Jahre alt"
    }
    
    var nameIsShort: Bool {
        name.count <= 5
    }
}
