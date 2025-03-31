
//  main.swift
//  02-05-ZooManager


import Foundation

// Aufgabe 1.2 Tier modellieren

let animal1: Animal = Animal(name: "Simba", age: 3.4, species: "Afrikanischer Löwe")
animal1.isEndangered = true
let animal2: Animal = Animal(name: "Timon", age: 9.5, species: "Erdmännchen")
let animal3: Animal = Animal(name: "Pumba", age: 8.7, species: "Warzenschwein")

// Aufgabe 1.3 Zoo modellieren

let zoo1: Zoo = Zoo(name: "Milele")

zoo1.animals = [animal1, animal2, animal3]

// Aufgabe 1.4 Beschreibungs-Methoden definieren

animal1.description()
zoo1.description()
