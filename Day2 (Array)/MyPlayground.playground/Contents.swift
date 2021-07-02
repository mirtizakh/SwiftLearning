
// Array
let names = ["Ali","Saad","Waqas"]

/* Sets
 1- Items aren’t stored in any order; they are stored in what is   effectively a random order.
 2- No item can appear twice in a set; all items must be unique.
 */

// pass an array in set to create a set
let colors = Set(["Red","Green","Blue"])
let colors2 = Set(["Red","Green","Red","Blue"])


/*
 Tuples
 1- You can’t add or remove items from a tuple; they are fixed in size.
 2- You can’t change the type of items in a tuple; they always have the same types they were created with.
 3- You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
 4- Tuples store values together in a single value.
 
 Dictionaries provide an interesting third case, because they give us some of the name safety of tuples but can grow and change like arrays. I say “some of the name safety” because we can’t guarantee that a particular value exists in a dictionary like we can with a tuple – we just need to try reading it and handle the optional that comes back.
 */

let name = (first : "Ali",second:"Khan")
name.first
name.0
var person = (name: "Paul", age: 40, isMarried: true)

/*
 Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
 The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:
 */
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
    "Ed Sheeran1": 1.73
]
let height = [
    1: 1.78,
    2: 1.73
]

/*
 If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back nil – nothing at all. While this might be what you want, there’s an alternative: we can provide the dictionary with a default value to use if we request a missing key.
 */
heights["Charlotte", default: 2.5]

/*
 Arrays, sets, and dictionaries are called collections, because they collect values together in one place.

 If you want to create an empty collection just write its type followed by opening and closing parentheses. For example, we can create an empty dictionary with strings for keys and values like this:
 */
var teams = [String: String]()
teams["Paul"] = "Red"

/*
 Similarly, you can create an empty array to store integers like this:
 */
var results = [Int]()

/*
 The exception is creating an empty set, which is done differently:
 */
var words = Set<String>()
var numbers = Set<Int>()

enum Result {
    case success
    case failure
}
/*
 Enum associated values let us add those additional details:
 */

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

/*
 if you want, you can assign one or more cases a specific value, and Swift will generate the rest. It’s not very natural for us to think of Earth as the second planet, so you could write this:
 */

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
