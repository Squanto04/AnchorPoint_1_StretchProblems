import UIKit



func stretchOne(x: Int, y: Int) {
    for i in stride(from: 0, to: y, by: x) {
        print(i)
    }
}

stretchOne(x: 3, y: 10)
