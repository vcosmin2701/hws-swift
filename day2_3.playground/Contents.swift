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

// -------While loop-------------


var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...100)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")

// --------Skipping loops----------


// continue

let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}


// break

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        
        if multiples.count == 10 {
            break;
        }
    }
}

print(multiples)

// ------CHECKPOINT 3----------

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
