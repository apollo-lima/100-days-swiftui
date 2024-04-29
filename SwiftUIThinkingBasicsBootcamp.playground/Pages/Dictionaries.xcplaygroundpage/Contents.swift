import Foundation

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

print(finalFruits)

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruitsSet)


// Dictionaries

var myFirstDictionary: [String : Bool] = [
    "Apple" : true,
    "Orange" : false
]

let item = myFirstDictionary["Apple"]

myFirstDictionary["Grape"] = false

print(myFirstDictionary["Grape"]?.description)

myFirstDictionary.removeValue(forKey: "Grape")

print(myFirstDictionary["Grape"])

