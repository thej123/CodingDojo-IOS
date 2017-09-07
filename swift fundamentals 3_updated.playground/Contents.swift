//: Playground - noun: a place where people can play

import UIKit

func add() -> [Int] {
    var arr: [Int] = [Int]()
    for i in 1...10 {
        arr.append(i)
    }
    return arr
}

func swap(newarr: inout [Int]) -> [Int] {
    let index1 = Int(arc4random_uniform(UInt32(newarr.count-1)))
    let index2 = Int(arc4random_uniform(UInt32(newarr.count-1)))
    let temp = newarr[index1]
    newarr[index1] = newarr[index2]
    newarr[index2] = temp
    return newarr
}

var x = add()
swap(newarr: &x)

func hundred(jumparr: inout [Int]) -> [Int] {
    for _ in 1...10 {
        swap(newarr: &jumparr)
    }
    return jumparr
}

let meaning = hundred(jumparr: &x)

func fortytwo(life: [Int]) {
    for i in 0...life.count-1 {
        if life[i] == 9 {
            print("We found the answer to the Ultimate Question at index \(i)")
        }
    }
}

fortytwo(life: meaning)
