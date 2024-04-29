import Foundation

// Arrays, Sets
var myTitle: String = "Hello, world!"
var myTitle2: String = "Hello, world!"


// Tuple
func doSomething(value: (title1: String, title2: String)) {
    
    
}

doSomething(value: (myTitle, myTitle))


let apple = "Apple"
let orange = "Orange"

var fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
let fruits3: Array<String> = [apple, orange]


let count = fruits.count
let firstItem = fruits.first
let lastItem = fruits.last
let firstIndex = fruits.indices.first
let lastIndex = fruits.indices.last

if let firstItem = fruits.first {
    // first item
}

// Check if it exists before assigning
if fruits.indices.contains(4) {
    let item = fruits[4]
}

fruits.append("Mango")
fruits.append("Watermelon")
fruits.append("Banana")

fruits.insert("Grape", at: 3)
fruits.insert(contentsOf: ["Tangerine", "Grapefruit"], at: 3)

fruits.remove(at: 2)

fruits.removeAll()

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruits)
