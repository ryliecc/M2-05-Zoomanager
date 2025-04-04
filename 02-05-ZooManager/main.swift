
//  main.swift
//  02-05-ZooManager


import Foundation

// Ablage für erstellte Instanzen

let animal1: Animal = Animal(name: "Zazu", age: 10, species: .redBilledToco, habitat: .savanna, diet: .herbivore)
let reptile1: Reptile = Reptile(name: "Kleiner Gator", age: 4, species: .crocodile, habitat: .swamp, diet: .carnivore)
let mammal1: Mammal = Mammal(name: "Timon", age: 9.5, species: .meerkat, habitat: .savanna, diet: .omnivore)
let mammal2: Mammal = Mammal(name: "Pumba", age: 8.7, species: .warthog, habitat: .savanna, diet: .omnivore)
let bigCat1: BigCat = BigCat(name: "Mufasa", age: 11, species: .africanLion, canRoar: true)
let bigCat2: BigCat = BigCat(name: "Simba", age: 5.4, species: .africanLion, canRoar: true)
let bigCat3: BigCat = BigCat(name: "Nala", age: 4.9, species: .africanLion, canRoar: true)
let bigCat4: BigCat = BigCat(name: "Kiara", age: 0.25, species: .africanLion, canRoar: false)
let bigCat5: BigCat = BigCat(name: "Scar", age: 12, species: .africanLion, canRoar: true)
let snake1: Snake = Snake(name: "Kaa", age: 30, species: .reticulatedPython, habitat: .rainforest, isVenomous: false)
let fish1: Fish = Fish(name: "Nemo", age: 6, species: .clownfish, habitat: .coralReef, diet: .herbivore)
let fish2: Fish = Fish(name: "Dory", age: 7, species: .regalBlueTang, habitat: .coralReef, diet: .herbivore)
let freshWaterFish1: FreshWaterFish = FreshWaterFish(name: "Cleo", age: 5, species: .goldfish, diet: .herbivore)
let tiger1: Tiger = Tiger(name: "Shere Khan", age: 10)
let allAnimals: [Animal] = [animal1, reptile1, mammal1, mammal2, bigCat1, bigCat2, bigCat3, bigCat4, bigCat5, snake1, fish1, fish2, freshWaterFish1, tiger1]

let zoo1: Zoo = Zoo(name: "Milele")

let animalInfo1: AnimalInfo = AnimalInfo(weight: 220, animal: bigCat2)

let guest1: Guest = Guest(name: "Miley Cyrus", isVip: true)
let guest2: Guest = Guest(name: "Michael Meyer", isVip: false)
let guest3: Guest = Guest(name: "Meredith Grey", isVip: false)

// Aufgabe 1.2 Tier modellieren
// Instanzen verschoben

// Aufgabe 1.3 Zoo modellieren

zoo1.animals = allAnimals

// Aufgabe 1.4 Beschreibungs-Methoden definieren

print(animal1)
print(zoo1)

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
print(animal1)
print("Beschreibung Zoo:")
print(zoo1)
print("Beschreibung Kopie:")
print(animal1Copy)

// Aufgabe 1.7 Zoobericht mit Filtermethoden
// Instanzen verschoben

zoo1.printAnimalNames()
zoo1.printAnimalsFromAge(startAge: 5)
zoo1.printEndangeredAnimals()
let lions: [Animal] = zoo1.filterSpecies(species: .africanLion)
print("Gefiltert nach Spezies Afrikanischer Löwe:")
for animal in lions {
    print(animal)
}

// Aufgabe 2.2 Vererbung: Tier als Superklasse
// Instanzen verschoben

// Aufgabe 2.3 Spezialisierung

print(reptile1)
print(mammal1)

zoo1.animals.append(reptile1)
zoo1.animals.append(mammal1)

print(zoo1)

// Aufgabe 2.4 Raubkatze
// Instanz verschoben

print(bigCat1)

// Aufgabe 2.5 Schlange
// Instanz verschoben

print(snake1)

// Aufgabe 2.6 as und is

zoo1.printTerrarium()

// Aufgabe 3.1 Computed Properties rund um name

print("Der Name von \(snake1.name) in Großbuchstaben ist \(snake1.upperCaseName)")
print(snake1.descriptionShort)
print("Der Name \(snake1.name) ist \(snake1.nameIsShort ? "" : "nicht ")kurz.")
print("Der Name \(bigCat1.name) ist \(bigCat1.nameIsShort ? "" : "nicht ")kurz.")

// Aufgabe 4.3 Struct Gast mit Protokoll definieren
// Instanzen verschoben

zoo1.guests = [guest1, guest2, guest3]
print(zoo1)

// Aufgabe 4.5 Fütterung implementieren

animal1.feed()
mammal1.feed()
bigCat1.feed()
