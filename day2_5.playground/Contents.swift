import Foundation

// ------- Default values for parameters ---------


func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var animals = ["Stitch", "Pufarina", "Marty"]
print(animals.count)
animals.removeAll(keepingCapacity: true)
print(animals.count)

