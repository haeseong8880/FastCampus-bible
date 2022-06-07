//: [Previous](@previous)

import Foundation
import Combine

// Transform - Map
let numPubliser = PassthroughSubject<Int, Never>()
let subscription1 = numPubliser
    .map { $0 * 2 }
    .sink { value in
        print("Transformed Value: \(value)")
    }

numPubliser.send(10)
numPubliser.send(20)
numPubliser.send(30)
subscription1.cancel()

// Filter
let stringPublisher = PassthroughSubject<String, Never>()
let subscription2 = stringPublisher
    .filter { $0.contains( "a") }
    .sink { value in
        print("Filter Value: \(value)")
    }
stringPublisher.send("abc")
stringPublisher.send("Jack")
stringPublisher.send("Joon")
stringPublisher.send("Jenny")
stringPublisher.send("JSON")
subscription2.cancel()

//: [Next](@next)
