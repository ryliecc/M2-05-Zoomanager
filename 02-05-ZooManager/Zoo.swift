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
}
