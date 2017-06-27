//: Playground - noun: a place where people can play

import UIKit

//Tuplas - Listas ordenadas de elementos
let personalData = ("Héctor", 21, "España")

let (name, age, place) = personalData

print(name)
print(age)
print(place)

print("Hola, me llamo \(name), tengo \(age) años y vivo en \(place)")
print("Hola, me llamo \(personalData.0), tengo \(personalData.1) años y vivo en \(personalData.2)")
