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
        // Aufgabe 3.3 Berechnen, ob ein Tier vom Aussterben bedroht ist
    var isEndangered: Bool {
        species.intValue < 105000
    }
    var species: Species
    
    init(name: String, age: Double, species: Species) {
        self.name = name
        self.age = age
        self.species = species
    }
    
    // Notiz: automatisch generierter initializer hat auch isEndangered mit rein gepackt, habe ich aber wieder raus gelöscht, weil es ja einen default Wert gibt und es dementsprechend nicht immer nötig ist diesen Wert bei Initialisierung festzulegen
    
    // Aufgabe 1.4 Beschreibungs-Methoden definieren
    
    func description() {
        print("Das Tier \(name) ist \(age) Jahre alt und von der Art \(species.rawValue). Es ist \(isEndangered ? "" : "nicht ")vom Aussterben bedroht. Diese Tierart hat eine durchschnittliche Lebenserwartung von \(species.lifeExpectancy) Jahren.")
    }
    
    // Aufgabe 3.1 Computed Properties rund um name
    
//    var upperCaseName: String {
//        name.uppercased()
//    }
//    
//    var descriptionShort: String {
//        "\(name), \(age) Jahre alt"
//    }
//    
//    var nameIsShort: Bool {
//        name.count <= 5
//    }
}
