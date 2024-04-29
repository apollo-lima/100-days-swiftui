import Foundation


//Object Oriented Programming

//During the life of the app, we create and destroy objects
//Create = initialize (init) = Allocate (add to memory)
//Destroy = Deinitialize (deinit) = Deallocate (remove from memory)

//Automatic Reference Counting
//A live count of the number of objects in memory
//Create 1 object, counts goes up by 1
//Create 2 object, counts goes up by 2
//Destroy 1 object, count goes down by 1

//The more obects in memory, the slower the app performs
//We want to keep the ARC count as low as possible
//We want to create objects only when we need them
//and destroy them as soon as we no longer need them

There are 2 types of memory
Stack & Heap

// Only objects in the heap are counted towards ARC

// Objects in the Stack
// String, Bool, Int, most basic types
// Struct, Enum, Arrays

// Objects in the Heap
// Functions
// Class, Actors
