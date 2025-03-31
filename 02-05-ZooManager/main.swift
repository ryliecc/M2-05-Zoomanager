
//  main.swift
//  02-05-ZooManager


import Foundation

// Aufgabe 1.2 Tier modellieren

let animal1: Animal = Animal(name: "Simba", age: 3.4, species: "Lion")
let animal2: Animal = Animal(name: "Timon", age: 1.5, species: "Meerkat")
let animal3: Animal = Animal(name: "Pumba", age: 4.7, species: "Warthog")

// Aufgabe 1.3 Zoo modellieren

let zoo1: Zoo = Zoo(name: "Milele")

zoo1.animals = [animal1, animal2, animal3]

