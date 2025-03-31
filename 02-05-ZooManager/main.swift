
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

// Aufgabe 1.5 TierInfo modellieren

let animalInfo1: AnimalInfo = AnimalInfo(weight: 220, animal: animal1)

animalInfo1.description()

// Aufgabe 1.6 Referenztyp (Klasse) vs Wertetyp (Struct)

var animalInfo2: AnimalInfo = animalInfo1
animalInfo2.weight = 200

print("Gewicht Instanz 1: \(animalInfo1.weight)\nGewicht Instanz 2: \(animalInfo2.weight)")

let animal1Copy: Animal = animal1
animal1Copy.age = 5.6
print("Beschreibung Original:")
animal1.description()
print("Beschreibung Zoo:")
zoo1.description()
print("Beschreibung Kopie:")
animal1Copy.description()
