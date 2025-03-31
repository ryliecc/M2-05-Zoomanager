//
//  AnimalInfo.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 31.03.25.
//

import Foundation

// Aufgabe 1.5 TierInfo modellieren

struct AnimalInfo {
    var weight: Double
    var animal: Animal
    
    func description() {
        animal.description()
        print("\(animal.name) wiegt \(weight) kg.")
    }
}
