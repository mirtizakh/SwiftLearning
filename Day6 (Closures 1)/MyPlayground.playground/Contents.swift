var str = "Hello, playground"

// Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.

//Functions used in this way are called closures

let driving = {
    print("I'm driving in my car")
}

//That effectively creates a function without a name, and assigns that function to driving. You can now call driving() as if it were a regular function, like this:
driving()

// Accepting parameters in a closure
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

//One of the differences between functions and closures is that you don’t use parameter labels when running closures. So, to call driving() now we’d write this:

driving2("London")

// Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// Closures as parameters

let driving3 = {
    print("I'm driving in my car")
}

func travel(action :() -> Void){
    print("This is travel function")
    action()
    print("Travel function end")
}

travel(action: driving3)

// Trailing closure syntax
//If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside braces.

// for above travel function
travel() {
    print("I'm driving in my car")
}

// OR

travel {
    print("I'm driving in my car")
}

