//
//  Protocols.swift
//  02-05-ZooManager
//
//  Created by Rylie Castell on 03.04.25.
//

import Foundation

// Aufgabe 4.2 Vorgaben für Zoobesucher: Protokoll selbst schreiben

protocol ZooGuest {
    var name: String { get set }
    var isVip: Bool { get set }
    func calculateTicketPrice() -> Double
}

// Aufgabe 4.4 Enum Ernaehrung, Protokoll Fuetterbar

protocol Feadable {
    var diet: Diet { get }
    var isFull: Bool { get set }
    func feed()
}
