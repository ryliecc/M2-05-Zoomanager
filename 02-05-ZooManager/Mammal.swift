//
//  Mammal.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 01.04.25.
//

import Foundation

// Aufgabe 2.2 Vererbung: Tier als Superklasse

class Mammal: Animal {
    
    // Aufgabe 2.3 Spezialisierung
    
//    override func description() {
//        print("---Säugetier---")
//        super.description()
//    }
    
    // Aufgabe 4.1 CustomStringConvertible implementieren
    
    override var description: String {
        return "---Säugetier---\n\(super.description)"
    }
}
