
//  main.swift
//  02-05-ZooManager


import Foundation

// Ablage für erstellte Instanzen

let animal1: Animal = Animal(name: "Zazu", age: 10, species: .redBilledToco)
let reptile1: Reptile = Reptile(name: "Kleiner Gator", age: 4, species: .crocodile)
let mammal1: Mammal = Mammal(name: "Timon", age: 9.5, species: .meerkat)
let mammal2: Mammal = Mammal(name: "Pumba", age: 8.7, species: .warthog)
let bigCat1: BigCat = BigCat(name: "Mufasa", age: 11, species: .africanLion, canRoar: true)
let bigCat2: BigCat = BigCat(name: "Simba", age: 5.4, species: .africanLion, canRoar: true)
let bigCat3: BigCat = BigCat(name: "Nala", age: 4.9, species: .africanLion, canRoar: true)
let bigCat4: BigCat = BigCat(name: "Kiara", age: 0.25, species: .africanLion, canRoar: false)
let bigCat5: BigCat = BigCat(name: "Scar", age: 12, species: .africanLion, canRoar: true)
let snake1: Snake = Snake(name: "Kaa", age: 30, species: .reticulatedPython, isVenomous: false)
let allAnimals: [Animal] = [animal1, reptile1, mammal1, mammal2, bigCat1, bigCat2, bigCat3, bigCat4, bigCat5, snake1]

let zoo1: Zoo = Zoo(name: "Milele")

let animalInfo1: AnimalInfo = AnimalInfo(weight: 220, animal: bigCat2)

// Aufgabe 1.2 Tier modellieren
// Instanzen verschoben

// Aufgabe 1.3 Zoo modellieren

zoo1.animals = allAnimals

// Aufgabe 1.4 Beschreibungs-Methoden definieren

animal1.description()
zoo1.description()

// Aufgabe 1.5 TierInfo modellieren
// Instanz verschoben

animalInfo1.description()

// Aufgabe 1.6 Referenztyp (Klasse) vs Wertetyp (Struct)

var animalInfo2: AnimalInfo = animalInfo1
animalInfo2.weight = 200

print("Gewicht Instanz 1: \(animalInfo1.weight)\nGewicht Instanz 2: \(animalInfo2.weight)")

let animal1Copy: Animal = animal1
animal1Copy.age = 11
print("Beschreibung Original:")
animal1.description()
print("Beschreibung Zoo:")
zoo1.description()
print("Beschreibung Kopie:")
animal1Copy.description()

// Aufgabe 1.7 Zoobericht mit Filtermethoden
// Instanzen verschoben

zoo1.printAnimalNames()
zoo1.printAnimalsFromAge(startAge: 5)
zoo1.printEndangeredAnimals()
let lions: [Animal] = zoo1.filterSpecies(species: .africanLion)
print("Gefiltert nach Spezies Afrikanischer Löwe:")
for animal in lions {
    animal.description()
}

// Aufgabe 2.2 Vererbung: Tier als Superklasse
// Instanzen verschoben

// Aufgabe 2.3 Spezialisierung

reptile1.description()
mammal1.description()

zoo1.animals.append(reptile1)
zoo1.animals.append(mammal1)

zoo1.description()

// Aufgabe 2.4 Raubkatze
// Instanz verschoben

bigCat1.description()

// Aufgabe 2.5 Schlange
// Instanz verschoben

snake1.description()

// Aufgabe 2.6 as und is

zoo1.printTerrarium()

// Aufgabe 3.1 Computed Properties rund um name

print("Der Name von \(snake1.name) in Großbuchstaben ist \(snake1.upperCaseName)")
print(snake1.descriptionShort)
print("Der Name \(snake1.name) ist \(snake1.nameIsShort ? "" : "nicht ")kurz.")
print("Der Name \(bigCat1.name) ist \(bigCat1.nameIsShort ? "" : "nicht ")kurz.")
