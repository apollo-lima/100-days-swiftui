import Foundation


for x in 0..<50 {
    print(x)
}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray {
    print(item)
    if item == "Gamma" {
        secondArray.append(item)
    }
}

for (index, item) in myArray.enumerated() {
    print("index: \(index) || \(item)")
}

// break = stop looping
// continue = go to the next iteration


// Sort, Map, Filter

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: "Conor", isPremium: false, order: 1),
    DatabaseUser(name: "Apollo", isPremium: true, order: 3),
    DatabaseUser(name: "Britney", isPremium: false, order: 2)
]

// Filter
var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    user.isPremium
}

// Shorthand sintax
var allPremiumUsers2: [DatabaseUser] = allUsers.filter({ $0.isPremium })

print(allPremiumUsers)
print(allPremiumUsers2)

// Sort

var orderedusers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    user1.order < user2.order
}

// Shorthand sintax
var orderedusers2: [DatabaseUser] = allUsers.sorted(by: { $0.order < $1.order })

print(orderedusers2)

// Map

var userNames: [String] = allUsers.map { user in
    user.name
}

// Shorthand sintax
var userNames2: [String] = allUsers.map ({ $0.name })

print(userNames2)
