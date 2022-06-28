//: [Previous](@previous)

import Foundation

// configuration -> urlsession -> urlsessionTask

let configureration = URLSessionConfiguration.default
let session = URLSession(configuration: configureration)

let url = URL(string: "https://api.github.com/users/haeseong8880")!

let task = session.dataTask(with: url) { data, response, error in
    guard let httpResponse = response as? HTTPURLResponse,
          (200..<300).contains(httpResponse.statusCode) else {
        print("---> response \(response)")
        return
    }
    
    guard let data = data else { return }
    let result = String(data: data, encoding: .utf8)
    print(result)
}
task.resume()

//: [Next](@next)
