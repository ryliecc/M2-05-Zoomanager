
//  main.swift
//  02-05-ZooManager


import Foundation

// Aufgabe 1.2 Tier modellieren

let animal1: Animal = Animal(name: "Simba", age: 5.4, isEndangered: true, species: .africanLion)
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

let animal4: Animal = Animal(name: "Nala", age: 4.9, isEndangered: true, species: .africanLion)
let animal5: Animal = Animal(name: "Kiara", age: 0.25, isEndangered: true, species: .africanLion)
let animal6: Animal = Animal(name: "Zazu", age: 10, isEndangered: true, species: .redBilledToco)

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

// Aufgabe 2.2 Vererbung: Tier als Superklasse

let reptile1: Reptile = Reptile(name: "Kleiner Gator", age: 4, species: .crocodile)
let mammal1: Mammal = Mammal(name: "Scar", age: 12, isEndangered: true, species: .africanLion)

// Aufgabe 2.3 Spezialisierung

reptile1.description()
mammal1.description()

zoo1.animals.append(reptile1)
zoo1.animals.append(mammal1)

zoo1.description()

// Aufgabe 2.4 Raubkatze

let bigCat1: BigCat = BigCat(name: "Mufasa", age: 11, isEndangered: true, species: .africanLion, canRoar: true)
zoo1.animals.append(bigCat1)
bigCat1.description()

// Aufgabe 2.5 Schlange

let snake1: Snake = Snake(name: "Kaa", age: 30, species: .python, isVenomous: false)
zoo1.animals.append(snake1)
snake1.description()

// Aufgabe 2.6 as und is

zoo1.printTerrarium()

// Aufgabe 3.1 Computed Properties rund um name

print("Der Name von \(snake1.name) in Großbuchstaben ist \(snake1.upperCaseName)")
print(snake1.descriptionShort)
print("Der Name \(snake1.name) ist \(snake1.nameIsShort ? "" : "nicht ")kurz.")
print("Der Name \(bigCat1.name) ist \(bigCat1.nameIsShort ? "" : "nicht ")kurz.")
