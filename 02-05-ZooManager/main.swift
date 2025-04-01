
//  main.swift
//  02-05-ZooManager


import Foundation

// Aufgabe 1.2 Tier modellieren

let animal1: Animal = Animal(name: "Simba", age: 5.4, species: .africanLion)
animal1.isEndangered = true
let animal2: Animal = Animal(name: "Timon", age: 9.5, species: .meerkat)
let animal3: Animal = Animal(name: "Pumba", age: 8.7, species: .warthog)

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

// Aufgabe 1.7 Zoobericht mit Filtermethoden

let animal4: Animal = Animal(name: "Nala", age: 4.9, species: .africanLion)
animal4.isEndangered = true
let animal5: Animal = Animal(name: "Kiara", age: 0.25, species: .africanLion)
animal5.isEndangered = true
let animal6: Animal = Animal(name: "Zazu", age: 10, species: .redBilledToco)
animal6.isEndangered = true

zoo1.animals.append(animal4)
zoo1.animals.append(animal5)
zoo1.animals.append(animal6)

zoo1.printAnimalNames()
zoo1.printAnimalsFromAge(startAge: 5)
zoo1.printEndangeredAnimals()
let lions: [Animal] = zoo1.filterSpecies(species: .africanLion)
print("Gefiltert nach Spezies Afrikanischer Löwe:")
for animal in lions {
    animal.description()
}
