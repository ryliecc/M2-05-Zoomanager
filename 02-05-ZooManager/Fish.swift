//
//  Fish.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 02.04.25.
//

import Foundation

// Aufgabe 2.7 Weitere Tiere

class Fish: Animal {
    
//    override func description() {
//        print("---Fisch---")
//        super.description()
//    }
    
    // Aufgabe 4.1 CustomStringConvertible implementieren
    
    override var description: String {
        return "---Fisch---\n\(super.description)"
    }
}
