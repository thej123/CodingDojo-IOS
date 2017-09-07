//: Playground - noun: a place where people can play

import UIKit

func tossCoin() -> String {
    // print("Tossing a Coin!")
    var result = String()
    if arc4random_uniform(2) == 1 {
        result = "Heads"
    }
    else{
        result = "Tails"
    }
    print(result)
    return result
}

// tossCoin()

func tossMultipleCoins(num: Int) -> Double {
    var count = 0
    for i in 1...num {
        if tossCoin() == "Heads" {
            count += 1
        }
    }
    let average: Double = Double(count)/Double(num)
    return average
}

tossMultipleCoins(num: 5)