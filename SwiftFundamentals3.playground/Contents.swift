//: Playground - noun: a place where people can play

import UIKit

import Foundation

func add() -> [Int]? {
    var arr = [Int]()
    for i in 1...255 {
        arr.append(i)
    }
    return arr
}

//if var array = add() {
//    print(array)
//}

var array = add()

func swap(arr: inout [Int]) -> [Int]? {
    var random1 = Int()
    var random2 = Int()
    var temp = Int()
    for _ in 1...100 {
        random1 = Int(arc4random_uniform(UInt32(arr.count)))
        random2 = Int(arc4random_uniform(UInt32(arr.count)))
        temp = arr[random1]
        arr[random1] = arr[random2]
        arr[random2] = temp
    }
    return arr
}

//if let swappedarray = swap(arr: &array!) {
//    print(swappedarray)
//}

let swappedarray = swap(arr: &array!)

func find42(arr: [Int]) -> String? {
    var val = Int()
    for i in 1...arr.count {
        if arr[i] == 42 {
            val = i
        }
    }
    return ("We found the answer to the Ultimate Question of Life, the Universe and Everything at index \(val)")
}

if let life = find42(arr: swappedarray!) {
    print(life)
}