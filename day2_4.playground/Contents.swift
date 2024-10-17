import Foundation


//------Functions--------
func showWelcome() {
    print("Welcome to Agile Freaks!!")
    print("The greatest place :D")
}

for _ in 1...10 {
    showWelcome()
}

// parameter
// the signature of the function is important

func printTimesTables(number: Int, end: Int){
    for i in 1...end {
        print("\(i) * \(number) = \(i * number)")
    }
}

// arguments
printTimesTables(number: 10, end: 20)


