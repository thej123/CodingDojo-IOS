//: Playground - noun: a place where people can play

import UIKit

struct Card {
    var color: String
    var roll: Int {
        get {
            if (self.color == "Blue") {
                return Int(arc4random_uniform(2) + 1)
            }
            else if (self.color == "Red") {
                return Int(arc4random_uniform(2) + 3)
            }
            else {
                return Int(arc4random_uniform(2) + 5)
            }
        }
    }
}


class Deck {
    var cards = [Card]()
    init() {
        for _ in 1...10 {
            let card = Card(color: "Blue")
            cards.append(card)
        }
        for _ in 1...10 {
            let card = Card(color: "Red")
            cards.append(card)
        }
        for _ in 1...10 {
            let card = Card(color: "Green")
            cards.append(card)
        }
    }
    func removeTopMost() -> String {
        let cardIndex = cards.count - 1
        let tempCard = cards[cardIndex]
        cards.remove(at: cardIndex)
        print(tempCard)
        return tempCard.color
    }
    func isEmpty() -> Bool {
        if cards.count > 1 {
            print("false")
            return false
        } else {
            print("true")
            return true
        }
    }
    func shuffle() {
        for _ in 0...15 {
            let random = Int(arc4random_uniform(UInt32(cards.count)))
            let random2 = Int(arc4random_uniform(UInt32(cards.count)))
            if random != random2 {
                swap(&cards[random], &cards[random2])
            }
            
        }
    }
}

var mydeck = Deck()
print(mydeck.cards)

class Player {
    var name = String()
    var hand = [String]()
    func draw() -> String {
        let newCard = mydeck.removeTopMost()
        self.hand.append(newCard)
        return newCard
    }
    func rolldice() -> Int {
        let roll: Int = Int(arc4random_uniform(6) + 1)
        return roll
    }

}

let player = Player()
print(player.hand)
print(player.draw())
print(player.hand)
print(player.rolldice())










