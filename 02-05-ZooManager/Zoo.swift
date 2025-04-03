//
//  Zoo.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 31.03.25.
//

import Foundation

// Aufgabe 1.3 Zoo modellieren

class Zoo: CustomStringConvertible {
    var name: String
    var animals: [Animal] = []
    
    init(name: String) {
        self.name = name
    }
    
    // Aufgabe 1.4 Beschreibungs-Methoden definieren
    
    //    func description() {
    //        print("Der Zoo \(name) hat folgende Tiere:")
    //        for animal in animals {
    //            animal.description()
    //        }
    //        print("Von \(animals.count) Tieren sind \(amountOfEndangeredAnimals) vom Aussterben bedroht!")
    //    }
    
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
                print(animal)
            }
        }
    }
    
    func printEndangeredAnimals() {
        print("Folgende Tiere im Zoo \(name) sind vom Aussterben bedroht:")
        for animal in animals {
            if animal.isEndangered {
                print(animal)
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
                print(animal)
            }
        }
    }
    
    // Aufgabe 3.6 Anzahl der bedrohten Tiere im Zoo berechnen
    
    var amountOfEndangeredAnimals: Int {
        var amount: Int = 0
        for animal in animals {
            if animal.isEndangered {
                amount += 1
            }
        }
        return amount
    }
    
    // Aufgabe 4.1 CustomStringConvertible implementieren
    
    var description: String {
        var returnString: String = "Der Zoo \(name) enthält folgende Tiere:\n"
        for animal in animals {
            returnString += animal.description + "\n"
        }
        returnString += "Von \(animals.count) Tieren sind \(amountOfEndangeredAnimals) vom Aussterben bedroht!\nFolgende Gäste besuchen gerade den Zoo:\n"
        for guest in guests {
            returnString += guest.description + "\n"
        }
        return returnString
    }
    
    // Aufgabe 4.3 Struct Gast mit Protokoll definieren
    
    var guests: [Guest] = []
}
