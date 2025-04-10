//
//  Animal.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 31.03.25.
//

import Foundation

// Aufgabe 1.2 Tier modellieren

class Animal: CustomStringConvertible, Feedable {
    var name: String
    var age: Double
        // Aufgabe 3.3 Berechnen, ob ein Tier vom Aussterben bedroht ist
    var isEndangered: Bool {
        species.intValue < 105000
    }
    var species: Species
    
    init(name: String, age: Double, species: Species, habitat: Habitat, diet: Diet, isFull: Bool = false) {
        self.name = name
        self.age = age
        self.species = species
        self.habitat = habitat
        self.diet = diet
        self.isFull = isFull
    }
    
    // Notiz: automatisch generierter initializer hat auch isEndangered mit rein gepackt, habe ich aber wieder raus gelöscht, weil es ja einen default Wert gibt und es dementsprechend nicht immer nötig ist diesen Wert bei Initialisierung festzulegen
    
    // Aufgabe 1.4 Beschreibungs-Methoden definieren
    
//    func description() {
//        print("Das Tier \(name) ist \(age) Jahre alt und von der Art \(species.rawValue). Es ist \(isEndangered ? "" : "nicht ")vom Aussterben bedroht. Diese Tierart hat eine durchschnittliche Lebenserwartung von \(species.lifeExpectancy) Jahren und ihr Lebensraum ist \(habitat.rawValue). Dieses Tier ist \(isOld ? "" : "noch nicht sehr ")alt.")
//    }
    
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
    
    // Aufgabe 3.5 Berechnen, ob ein Tier alt ist
    
    var isOld: Bool {
        let oldAge: Double = Double(species.lifeExpectancy) / 100 * 75
        return age >= oldAge
    }
    
    // Aufgabe 2.7 Weitere Tiere
    
    var habitat: Habitat
    
    // Aufgabe 4.1 CustomStringConvertible implementieren
    
    var description: String {
        return "Das Tier \(name) ist \(age) Jahre alt und von der Art \(species.rawValue). Es ist \(isEndangered ? "" : "nicht ")vom Aussterben bedroht. Diese Tierart hat eine durchschnittliche Lebenserwartung von \(species.lifeExpectancy) Jahren und ihr Lebensraum ist \(habitat.rawValue). Dieses Tier ist \(isOld ? "" : "noch nicht sehr ")alt."
    }
    
    // Aufgabe 4.5 Fütterung implementieren
    
    var diet: Diet
    var isFull: Bool
    
    func feed() {
        isFull = true
        switch diet {
        case .carnivore:
            print("\(name) wird mit Fleich gefüttert.")
        case .herbivore:
            print("\(name) wird mit Pflanzen gefüttert.")
        case .omnivore:
            print("\(name) wird mit Fleisch und Pflanzen gefüttert.")
        }
    }
}
