//: [Previous](@previous)

import Foundation
import Combine

// Publisher & Subscriber
let just = Just(1000)
let subscription1 = just.sink { value in
    print("Recived Value: \(value)")
}

let arrayPublisher = [1, 3, 5, 7 ,9].publisher
let subscription2 = arrayPublisher.sink { value in
    print("Recived Value: \(value)")
}







//: [Next](@next)


