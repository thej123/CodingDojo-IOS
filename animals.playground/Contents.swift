//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var name: String
    var health: Int = 100
    init(name: String) {
        self.name = name
    }
    func displayHealth() -> Int {
        return health
    }
}

class Cat: Animal {
    init(catName: String) {
        super.init(name: catName)
        self.health = 150
    }
    func growl() {
        print("Rawr")
    }
    func run() {
        if self.health > 9 {
            print("Running")
            self.health -= 10
        } else {
            print("Dont have enough health")
        }
    }
}

var mycat = Cat(catName: "Meow")
print(mycat.growl())
print(mycat.displayHealth())

class Lion: Cat {
    init(lionName: String) {
        super.init(catName: lionName)
        self.health = 200
    }
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
}

class Cheetah: Cat {
    override func run() {
        if self.health > 49 {
            print("Running Fast")
            self.health -= 50
        } else {
            print("Does not have enough health to run!")
        }
    }
    func sleep() {
        if self.health < 151 {
            self.health += 50
        }
    }
}

var mylion = Lion(lionName: "Tanvi")
mylion.run()
mylion.run()
mylion.run()
print(mylion.displayHealth())
mylion.growl()

var mycheetah = Cheetah(catName: "Havi")
mycheetah.run()
mycheetah.run()
mycheetah.run()
mycheetah.run()
print(mycheetah.displayHealth())