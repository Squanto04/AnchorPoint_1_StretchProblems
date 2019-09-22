import UIKit

class Animal {
    var name: String
    var diet: String
    
    init(name: String, diet:String) {
        self.name = name
        self.diet = diet
    }
    
    func eat() {
        print("\(name) is eating \(diet)")
    }
}

class Bird: Animal {
    var migratesInWater: Bool = false
    
    func fly() {
        print("WHOOSH...\(name) is Flying")
    }
}

class Penguin: Bird {
    override func fly() {
        print("Penguins can't fly")
    }
    func feedYoung() {
        print("\(name) is regurgitating some \(diet) to it's young")
    }
}

class Dog: Animal {
    func bark() {
        print("WOOF WOOF \(name) is barking")
    }
    override func eat() {
        super.eat()
        print("\(name) made a mess")
    }
}

let tropicalPenguin = Penguin(name: "Scott", diet: "Tendies")
tropicalPenguin.feedYoung()
tropicalPenguin.eat()
tropicalPenguin.fly()

class Poodle: Dog {
    let rankInStateFair: Int
    
    init(name: String, diet: String, rank: Int) {
        self.rankInStateFair = rank
        super.init(name: name, diet: diet)
    }
}
