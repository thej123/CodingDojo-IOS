//: Playground - noun: a place where people can play

import UIKit

func tossCoin() -> String {
    print("Tossing a Coin!")
    var result = "head"
    print(result)
    return result
}

tossCoin()

func tossMultipleCoins(num: Int) -> Double {
    for _ in 1...num {
        tossCoin()
    }
}

tossMultipleCoins(num: 3)
