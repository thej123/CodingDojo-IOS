//: Playground - noun: a place where people can play

import UIKit

// // classes


// class Person {
// 	var species = "H.Sapiens"
// 	var name: String
// 	init(name: String) {
// 		self.name = name
// 	}
// 	func speak() {
// 		print("Hello! I am a \(self.species) and my name is \(self.name)")
// 	}
// }
// // var myPerson: Person = Person()
// // print("\(myPerson.species)")

// var myPerson = Person(name: "Thej")
// print("\(myPerson.species)")

// myPerson.species = "Homo Sapien"
// print("\(myPerson.species)")

// myPerson.speak()

// class User {
// 	var interlligence = 0
// 	func studyForTopic(topic: String, hours: Int) {
// 		print("I am studing \(topic) for \(hours) hours")
// 	}
// }

// var user = User()
// user.studyForTopic(topic: "Math", hours: 12)


// Struts

struct Rectangle {
    var width: Int
    var height: Int
    func printDesc() {
        print("I have a width of \(width) and a height of \(height)")
    }
    mutating func doubleWidth() {
        width *= 2
    }
}

let rectangle = Rectangle(width:200, height:400)

rectangle.printDesc()
// rectangle.doubleWidth()



















