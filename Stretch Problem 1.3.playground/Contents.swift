import UIKit

class Person {
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
let john = Person(firstName: "John", lastName: "Doey", age: 21)
let jordan = Person(firstName: "Jordan", lastName: "Lamb", age: 29)

let clubMembers: [Person] = [james, andrea, carol, jordan]

extension Person : Equatable{}

func ==(lhs: Person, rhs: Person) -> Bool {
    if lhs.firstName != rhs.firstName {return false}
    
    return true
}

func areYouAMemberOfTheClub(person: Person) -> Bool {

    for member in clubMembers {
        if person.firstName == member.firstName {
            return true
        }
    }
    return false
    }

areYouAMemberOfTheClub(person: john)
areYouAMemberOfTheClub(person: jordan)

