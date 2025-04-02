//
//  Extensions.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 02.04.25.
//

import Foundation

// Aufgabe 3.2 Extension für Tier

extension Animal {
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
