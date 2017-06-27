//: Playground - noun: a place where people can play

import UIKit

//Lets create dictionaries
             //Key  Value
var objects: [Int: String] = [2: "Avion", 9:"Jet"]

var other = [1: "Hector"]

var anotherone = [Int: String]()
anotherone[2] = "Auto"

print(anotherone[2] ?? "Empty")

for results in objects.values
{
    print(results)
}

for results in objects.keys
{
    print(results)
}
