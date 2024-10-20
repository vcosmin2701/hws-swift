import Foundation

// Type annotations

let productName: String = "keyboard"
var quantity: Int = 10

let pi: Double = 3.14

var isEnabled: Bool = true

var bands: [String] = ["Metallica", "The Arhitects", "BMTH"]
var user: [String: String] = ["user":"@defaultName"]

var books: Set<String> = Set([
    "Hacking with Swift",
    "Testing with Swift"
])

var brands: [String] = ["Apple", "Logitech"]

// empty array with type annotation
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .dark

let username: String

username = "@cosmo"

print(username)

// ------ CHECKPOINT 2 -----------

func countAnimals(animals: [String]) {
    print("Animals count: \(animals.count)")
}

let animals: [String] = ["Chinchilla", "Dog", "Hedgehog", "Hedgehog", "Dog"]
var count: Int = animals.count

// Count all the elements in the array
countAnimals(animals: animals)

let uniqueAnimals = Set(animals)

print(uniqueAnimals)
print("Number of unique animals: \(uniqueAnimals.count)")

