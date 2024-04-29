import Foundation

// Structs are fast!
// Structs are stored in the stack (memory)
// Objects in the Stack are Value types
// Value types are copied & mutaded


struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an implicit init
    //    init(title: String, dateCreated: Date) {
    //        self.title = title
    //        self.dateCreated = dateCreated
    //    }
    
    // Passing a default value in case the value is not passed
    //    init(title: String, dateCreated: Date = .now) {
    //        self.title = title
    //        self.dateCreated = dateCreated
    
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
}

let myObject: String = "Hello, world!"

//let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now)
//let myQuiz2: Quiz = Quiz(title: "Quiz 2")

let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: nil, isPremium: nil)

print(myQuiz.dateCreated)



// Immutable struct = all let constants = not mutable = cannot mutate it
struct UserModel {
    let name: String
    let isPremium: Bool
}


var user1: UserModel = UserModel(name: "Apollo", isPremium: false)

func markUserAsPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

//markUserAsPremium()


// Mutable Struct
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2: UserModel2 = UserModel2(name: "Apollo", isPremium: false)

func marUserAsPremium2() {
    print(user2)
    user2.isPremium = true
    print(user2)
}

marUserAsPremium2()

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4: UserModel4 = UserModel4(name: "Apollo", isPremium: false)

user4.markUserAsPremium()
