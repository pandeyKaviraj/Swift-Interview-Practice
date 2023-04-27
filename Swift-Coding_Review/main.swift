//
//  main.swift
//  Swift-Coding_Review
//
//  Created by Kaviraj Pandey on 24/04/23.
//

// Important swift concepts to help you crack coding interveiws.




import Foundation

// 100 days of swiftui checkpoint 2

let albums = ["Red", "Blue", "Green", "Purple", "Red"]
print("Total number of albums are \(albums.count)")

let removeDuplicateAlbums = Set(albums)
print(removeDuplicateAlbums.count)

let number = Int.random(in: 1...100)
print(number)


// Fizzbuzz probleam checkpoint 3

for i in 1...100 {
    if i.isMultiple(of: 15) {
        print("Fizzbuzz")
    }
    else if i.isMultiple(of: 3) {
        print("Fizz")
    }
    else if i.isMultiple(of: 5) {
        print("Buzz")
    }
    else {
        print(i)
    }
}

// Checkpoint 4

enum Root: Error {
    case outOfBounds
    case noRoot
}



func squareRootFinder(number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw Root.outOfBounds
    }
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    // We can throw error if no root found not necessary to write keyword return
    throw Root.noRoot
}

let num = 3
do {
    let ans = try squareRootFinder(number: num)
    print("Square root of \(num) is \(ans)")
}
catch Root.outOfBounds {
    print("Give number range between 1 & 10000")
    
}
catch Root.noRoot {
    print("Sorry I can't give you the root in double but don't worry built in function is there hurray !!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
    let answer = sqrt(Double(num))
    let formatted = String(format: "Square root of \(num) is : %.4f", answer)
    print(formatted)
}

// Important section to remember property observers willset, didset, newValue, oldValue

struct App {
    var contacts = [String]() {
        
        // before the property changed
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        // property just changed
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")
