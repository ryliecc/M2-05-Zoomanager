//
//  Species.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 01.04.25.
//

// Aufgabe 2.1 Enum Spezies
enum Species: String {
    case africanLion = "Afrikanischer Löwe"
    case redBilledToco = "Rotschnabeltoko"
    case meerkat = "Erdmännchen"
    case warthog = "Warzenschwein"
    case crocodile = "Krokodil"
    case python = "Python"
    
    // Aufgabe 3.3 Berechnen, ob ein Tier vom Aussterben bedroht ist
    
    var intValue: Int {
        switch self {
        case .africanLion: return 23000
        case .redBilledToco: return 500000
        case .meerkat: return 1500000
        case .warthog: return 250000
        case .crocodile: return 1000000
        case .python: return 2000000
        }
    }
}
