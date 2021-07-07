

var str = "Hello, playground"

func square(number: Int) -> Int {
    return number * number
}
var a = square(number : 10)

// Parameter labels

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

// Omitting parameter labels

//You can get this same behavior in your own functions by using an underscore, _, for your external parameter name, like this:
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

//  Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)


//Variadic functions
//Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the same type.

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)

enum Password:Error{
    case obvious
}

func checkPassword(_ password : String) throws -> Bool{
     if password == "password"{
        throw Password.obvious
    }
    return true
}



do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


// Note All parameters passed into a Swift function are constants
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

// You also need to pass the parameter to doubleInPlace using an ampersand, &, before its name, which is an explicit recognition that you’re aware it is being used as inout.
