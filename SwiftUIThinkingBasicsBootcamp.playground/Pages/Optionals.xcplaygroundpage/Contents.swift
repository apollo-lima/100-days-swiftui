import Foundation


// There are three ways of unwrapping optionals, you can use a nil coalescing and give it a new default value
// or you can if-let and enter the closure with that new value or you can use a guard statement and return out of the function
// if there is no values

// There is always a value and it is a Boolean
let myBool: Bool = false

// We don't know if there is a value but if there is it is a boolean
// Can be true, false or nil
let myOtherBool: Bool? = false

// Unwrapping Optionals
// Nil coalescing operator ??
let newValue: Bool? = myOtherBool

let newValue2: Bool = myOtherBool ?? true

print("New value 2: \(newValue2.description)")

// If-Let
let userIsPremium: Bool? = true

func checkIfUserIsPremium() -> Bool {
    
    // If there is a value in userIsPremium, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value, is either true or false, non nil
        // In other words, if we get a value we go down here
        print(newValue)
        return newValue
        // As the code will return from there, else is not mandatory, just return whatever down there to return the default value
        // In the other example you will see without creating a new variable and just returning
    } else {
        // The default value is here in case there is no value
        return false
    }
}

func checkIfUserIsPremium2() -> Bool {
    // If userIsPremium has a value, create a new one with the same name and same value
    if let userIsPremium {
        // is referencing this one that was just create
        print("has a value")
        return userIsPremium
    }
    
    print("doesn't have a value")

    return false
}

checkIfUserIsPremium2()

// Guard

func checkIfUserIsPremium3() -> Bool {
    
    // Make sure there is a value
    guard let newValue = userIsPremium else {
        return false
    }
    
    return newValue
}

