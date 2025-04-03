//
//  Enums.swift
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
    case reticulatedPython = "Netzpython"
    case clownfish = "Clownfisch"
    case regalBlueTang = "Paletten-Doktorfisch"
    case goldfish = "Goldfisch"
    case tiger = "Tiger"
    
    // Aufgabe 3.3 Berechnen, ob ein Tier vom Aussterben bedroht ist
    
    var intValue: Int {
        switch self {
        case .africanLion: return 23000
        case .redBilledToco: return 500000
        case .meerkat: return 1500000
        case .warthog: return 250000
        case .crocodile: return 1000000
        case .reticulatedPython: return 2000000
        case .clownfish: return 500000000
        case .regalBlueTang: return 1000000
        case .goldfish: return 1000000000
        case .tiger: return 3900
        }
    }
    
    // Aufgabe 3.4 Lebenserwartung berechnen
    
    var lifeExpectancy: Int {
        switch self {
        case .africanLion: return 14
        case .redBilledToco: return 20
        case .meerkat: return 12
        case .warthog: return 15
        case .crocodile: return 70
        case .reticulatedPython: return 25
        case .clownfish: return 10
        case .regalBlueTang: return 20
        case .goldfish: return 25
        case .tiger: return 25
        }
    }
}

// Aufgabe 2.7 Weitere Tiere

enum Habitat: String {
    case coralReef = "das Korallenriff"
    case freshWater = "das Süßwasser"
    case savanna = "die Savanne"
    case swamp = "der Sumpf"
    case rainforest = "der Regenwald"
}

// Aufgabe 4.4 Enum Ernaehrung, Protokoll Fuetterbar

enum Diet {
    case carnivore
    case herbivore
    case omnivore
}
