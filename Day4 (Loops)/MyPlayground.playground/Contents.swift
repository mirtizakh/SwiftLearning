
var str = "Hello, playground"

let count = 1...10

for number in count
{
    print(number)
}

// repeat is similar like do while loop java

var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

// Exiting multiple loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


