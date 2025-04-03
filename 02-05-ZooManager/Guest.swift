//
//  Guest.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 03.04.25.
//

import Foundation

// Aufgabe 4.3 Struct Gast mit Protokoll definieren

struct Guest: ZooGuest, CustomStringConvertible {
    var name: String
    
    var isVip: Bool
    
    func calculateTicketPrice() -> Double {
        if isVip {
            return 14.99
        } else {
            return 29.99
        }
    }
    
    var description: String {
        "Der Gast \(name) ist \(isVip ? "ein" : "kein") VIP."
    }
}
