//: Playground - noun: a place where people can play

import UIKit

for i in 1...5 {
    print(i)
}

for i in 1...30 {
    if (i%15 != 0 && (i%3==0 || i%5==0)) {
        print(i)
    }
}

for i in 1...30 {
    if (i%15 == 0 ) {
        print("buzzkill")
    }
    else if (i%3==0) {
        print("buzz")
    }
    else if (i%5==0) {
        print("kill")
    }
}