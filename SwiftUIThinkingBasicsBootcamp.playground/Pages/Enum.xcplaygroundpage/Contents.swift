import Foundation
 
// Enum is the is the same as Struct except we know all cases at runtime

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

enum CarBrandOption {
    case ford
    case toyota, honda
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        default:
            return "Whatever"
        }
    }
}

// another way

enum Weekdays {
    case monday, tuesday, wednesday, thursday, friday
}

var car1 = CarModel(brand: .ford, model: "Fiesta")
