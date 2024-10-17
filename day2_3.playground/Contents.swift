import Foundation

// ---------- LOOPS ------------

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

for i in 1...12 { // up to and included
    // 1...12 is a range
    print("5 x \(i) is \(5 * i)")
}

// nested loops

for i in 1...12 {
    print("The \(i) times table")
    for j in 1...12 {
        print("   \(j) x \(i) is \(j * i)")
    }
    print()
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

// up to but not included
for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

var repeatMessage = "iOS"
for _ in 1...5 {
    repeatMessage += repeatMessage
}
print(repeatMessage)
