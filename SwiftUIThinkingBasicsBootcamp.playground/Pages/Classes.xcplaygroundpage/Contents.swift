import Foundation

// Classes are slow
// Classes are stored in the Heap (memory)
// Objects in the Heap are reference type
// Reference types point to an object in memory and update the object in memory


// All the data needed for some screen
class ScreenViewModel {
    
    let title: String
    private(set) var showButton: Bool
    
    // This is the same init as a Struct, except structs have implicit init
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // runs as the object is being destructed
        // Structs do not have init
        
    }
    
    func hideButton() {
        showButton = false
    }
}

// Notice that we are using let because
// the object itself is not changing
// the data inside the object is changing

let ViewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)

ViewModel.hideButton()
