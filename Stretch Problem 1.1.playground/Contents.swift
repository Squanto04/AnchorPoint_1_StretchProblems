import UIKit

class Person {
    var name: String
    var favoriteColor: String?
    var favoriteMovie: String?
    
    init(name: String, favoriteColor: String?, favoriteMovie: String?) {
        self.name = name
        self.favoriteColor = favoriteColor
        self.favoriteMovie = favoriteMovie
    }
}

let thisPerson = Person(name: "Johnny", favoriteColor: "Black", favoriteMovie: nil)

print("\(thisPerson.name)s favorite color is \(thisPerson.favoriteColor!).")

