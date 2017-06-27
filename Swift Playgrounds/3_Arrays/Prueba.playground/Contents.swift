//: Playground - noun: a place where people can play

import UIKit

var shoppingList = ["Azucar", "Pan", "Café"]
var languages = [String]()

print(shoppingList)

shoppingList.append("Leche")

print(shoppingList)
print("Tengo que comprar \(shoppingList.count) cosas, las cuales son: ")


// Print content of shoppingList, element by line

for element in shoppingList
{
    print(element)
}


// Add element at index

shoppingList.insert("Jamón", at: 0)

print(shoppingList)

// Remove element at index

shoppingList.remove(at: 0)

print(shoppingList)


// Add element

languages.append("Español")

print(languages)

