//
//  Zoo.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 31.03.25.
//

import Foundation

// Aufgabe 1.3 Zoo modellieren

class Zoo {
    var name: String
    var animals: [Animal] = []
    
    init(name: String) {
        self.name = name
    }
    
    // Aufgabe 1.4 Beschreibungs-Methoden definieren
    
    func description() {
        print("Der Zoo \(name) hat folgende Tiere:")
        for animal in animals {
            animal.description()
        }
    }
    
    // Aufgabe 1.7 Zoobericht mit Filtermethoden
    
    func printAnimalNames() {
        print("Die Namen der Tiere im Zoo \(name) sind:")
        for animal in animals {
            print(animal.name)
        }
    }
    
    func printAnimalsFromAge(startAge: Double) {
        print("Die Tiere im Zoo \(name), die mindestens \(startAge) Jahre alt sind, sind:")
        for animal in animals {
            if animal.age >= startAge {
                animal.description()
            }
        }
    }
    
    func printEndangeredAnimals() {
        print("Folgende Tiere im Zoo \(name) sind vom Aussterben bedroht:")
        for animal in animals {
            if animal.isEndangered {
                animal.description()
            }
        }
    }
    
    func filterSpecies(species: Species) -> [Animal] {
        var animalsWithSpecies: [Animal] = []
        for animal in animals {
            if animal.species == species {
                animalsWithSpecies.append(animal)
            }
        }
        return animalsWithSpecies
    }
    
    // Aufgabe 2.6 as und is
    
    func printTerrarium() {
        print("---Terrarium---")
        for animal in animals {
            if animal is Reptile {
                animal.description()
            }
        }
    }
}
