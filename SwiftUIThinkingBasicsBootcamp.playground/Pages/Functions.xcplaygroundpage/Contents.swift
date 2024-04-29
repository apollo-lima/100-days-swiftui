import Foundation

func myFirstFoundation() {
    print("MY FIRST FUNCTION CALLED")
    mySecondFoundation()
    myThirdFoundation()
}

func mySecondFoundation() {
    print("MY SECOND FUNCTION CALLED")
    myThirdFoundation()
}

func myThirdFoundation() {
    print("MY SECOND FUNCTION CALLED")
}

myFirstFoundation()

func getUserName() -> String {
    let username = "Apollo"
    return username
}

let name = getUserName()

print(name)

// ----------------------------------------

var userDidCompleteOnBoarding = true
