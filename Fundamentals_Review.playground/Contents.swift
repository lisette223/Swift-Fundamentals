/*:
 # Swift Fundamentals Review
 ## App Dev with Swift — Extended Playground Exercise

 Topics: Variables & Constants, Operators, Conditionals,
 the Ternary Operator, Switch Statements, For Loops, While Loops,
 Type Casting & Conversion


 Instructions: Work through each section in order. Read the comments,
 fill in every `// TODO` line, and check your work using the `print()`
 statements provided. Don't move to the next section until your code
 runs without errors.


   - Part 1: Variables & Constants .......... 10 min
   - Part 2: Operators ...................... 12 min
   - Part 3: Conditionals (if/else) ......... 12 min
   - Part 4: Ternary Operator ............... 10 min
   - Part 5: Switch Statements .............. 12 min
   - Part 6: For Loops ....................... 12 min
   - Part 7: While Loops ..................... 10 min
   - Part 8: Type Casting & Conversion ....... 12 min
   - Part 9: Challenge (combine it all) ...... 12 min
*/

import Foundation

print("=== PART 1: Variables & Constants (10 min) ===")

// A variable can change after it's created. Use `var`.
var currentScore = 0

// A constant cannot change after it's created. Use `let`.
let studentName = "Jordan"

// TODO 1: Create a variable called `livesRemaining` and set it to 3.


// TODO 2: Create a constant called `courseName` and set it to "App Dev with Swift".


// TODO 3: Try changing `currentScore` to 10, then print it.


// TODO 4: Uncomment the line below and run it. Read the error Xcode gives you.
// courseName = "Intro to Swift"
// In the comment line below, explain in your own words why this fails:
// Your answer:


// TODO 5: Create a variable `isGamePaused` (Bool) and a constant `maxPlayers` (Int).
// Then write one sentence in a comment explaining a real situation in an app
// where you'd use a constant instead of a variable.


print("Student: \(studentName), Score: \(currentScore)")


print("\n=== PART 2: Operators (12 min) ===")

let a = 17
let b = 5

// Arithmetic operators
print("a + b =", a + b)
print("a - b =", a - b)
print("a * b =", a * b)
print("a / b =", a / b)       // integer division — what do you notice?
print("a % b =", a % b)       // remainder (modulo)

// TODO 6: Predict the output of a / b BEFORE running it. Write your prediction here:
// Prediction:
// Actual result:

// Comparison operators return a Bool
print("a > b =", a > b)
print("a == b =", a == b)
print("a != b =", a != b)

// Logical operators
let isEnrolled = true
let hasLaptop = true
print("isEnrolled && hasLaptop =", isEnrolled && hasLaptop)
print("isEnrolled || hasLaptop =", isEnrolled || hasLaptop)
print("!isEnrolled =", !isEnrolled)

// TODO 7: Create two Bool constants of your own (`canVote` and `isTeenager`)
// and print the result of combining them with && and ||.


// TODO 8: Compound assignment operators. Create `var points = 10`, then use
// +=, -=, *=, and /= (one at a time, printing after each) to change it.


// TODO 9: A rectangle has width 8 and height 3. Using arithmetic operators,
// calculate and print its area and its perimeter.


print("\n=== PART 3: Conditionals (12 min) ===")

let temperature = 72

if temperature > 85 {
    print("It's hot outside.")
} else if temperature > 60 {
    print("It's nice outside.")
} else {
    print("It's cold outside.")
}

// TODO 10: Write an if/else-if/else chain that checks a variable called
// `grade` (0-100) and prints "A", "B", "C", "D", or "F" using these cutoffs:
// A: 90+, B: 80-89, C: 70-79, D: 60-69, F: below 60
var grade = 84
// Your code here:


// TODO 11: Write an if statement that checks a variable `password` (String).
// If it has fewer than 8 characters (hint: password.count), print
// "Password too short". Otherwise print "Password accepted".
let password = "swift123"


// TODO 12: Combine conditions with && / ||. Given `age` and `hasPermissionSlip`
// (Bool), print "Can go on the trip" only if age >= 13 AND hasPermissionSlip
// is true. Otherwise print "Cannot go on the trip".
let age = 14
let hasPermissionSlip = true


print("\n=== PART 4: Ternary Operator (10 min) ===")

// The ternary operator is shorthand for a simple if/else:
// condition ? valueIfTrue : valueIfFalse
let ticketType = age >= 18 ? "Adult" : "Child"
print("Ticket type: \(ticketType)")

// TODO 13: Rewrite this if/else as a single ternary expression:
let numberOfItems = 1
var itemWord = ""
if numberOfItems == 1 {
    itemWord = "item"
} else {
    itemWord = "items"
}
// Your ternary version here (store the result in `itemWordTernary`):
// let itemWordTernary =


// TODO 14: Use a ternary to set `statusMessage` to "Pass" if `grade` (from Part 3)
// is 60 or above, or "Fail" if it's below 60.
// let statusMessage =


// TODO 15 (bonus): Nested ternary. Set `sizeLabel` to "Small" if a variable
// `quantity` is less than 10, "Medium" if less than 50, otherwise "Large".
// Hint: you CAN chain ternaries, but discuss with a partner whether an
// if/else-if chain might be more readable here.
let quantity = 35


print("\n=== PART 5: Switch Statements (12 min) ===")

let dayNumber = 3

switch dayNumber {
case 1:
    print("Monday")
case 2:
    print("Tuesday")
case 3:
    print("Wednesday")
case 4, 5:
    print("Almost the weekend!")
case 6, 7:
    print("Weekend!")
default:
    print("Not a valid day")
}

// TODO 16: Write a switch statement on a constant `letterGrade` ("A" through "F")
// that prints a short comment for each case, e.g. "A" -> "Excellent!",
// "F" -> "See me after class." Include a default case.
let letterGrade = "B"
// Your code here:


// TODO 17: Switch with a range. Write a switch on `examScore` (Int) using
// case ranges like `case 90...100:` to print a letter grade A-F.
let examScore = 76


// TODO 18 (bonus): Switch on a tuple. Given a point (x, y), use a switch
// with pattern matching to print "Origin" if (0,0), "On the x-axis" if
// y == 0, "On the y-axis" if x == 0, or "Somewhere else" otherwise.
// Hint: case (0, 0):  case (_, 0):  case (0, _):  default:
let point = (3, 0)


print("\n=== PART 6: For Loops (12 min) ===")

for i in 1...5 {
    print("Count: \(i)")
}

// stride lets you count by a custom step without needing a collection
for multiple in stride(from: 0, through: 20, by: 5) {
    print("Multiple of 5: \(multiple)")
}

// TODO 19: Use a for-in loop with a range to print all even numbers from 2 to 20.
// Hint: you can loop 1...20 and use an if check, or explore stride(from:to:by:).


// TODO 20: Use stride(from:through:by:) to print every multiple of 3 from
// 3 up to 30.


// TODO 21: Use a for loop to calculate the sum of all numbers from 1 to 50,
// storing the result in a variable called `rangeSum`. Print the final total.


// TODO 22 (bonus): Nested for loops. Print a simple multiplication table
// for 1 through 5 (5 rows, 5 columns), e.g. "1 x 1 = 1", "1 x 2 = 2", etc.


print("\n=== PART 7: While Loops (10 min) ===")

var countdown = 5
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Liftoff!")

// TODO 23: Use a while loop to add up numbers from 1 to 100 and store
// the total in a variable called `sum`. Print the final sum.
var sum = 0
var counter = 1
// Your code here:


// TODO 24 (bonus): Rewrite the countdown above as a repeat-while loop.


// TODO 25: Use a while loop to find the first power of 2 greater than 1000
// (1, 2, 4, 8, 16...). Print the value once you find it.


print("\n=== PART 8: Type Casting & Conversion (12 min) ===")

// Swift is type-safe: you often need to explicitly convert between types.

let wholeNumber = 7
let decimalNumber = 3.5

// Converting Int to Double so they can be used together:
let combinedTotal = Double(wholeNumber) + decimalNumber
print("combinedTotal =", combinedTotal)

// Converting a numeric type to String:
let scoreAsText = String(currentScore)
print("scoreAsText =", scoreAsText, "- type is now a String")

// Converting a String to a numeric type returns an OPTIONAL,
// because the conversion might fail (e.g. "abc" isn't a number).
let userInput = "42"
let convertedNumber = Int(userInput)   // this is an Int?, not an Int
print("convertedNumber =", convertedNumber ?? "conversion failed")

let badInput = "banana"
let badConversion = Int(badInput)
print("badConversion =", badConversion ?? "conversion failed")

// TODO 26: Create a Double called `price` set to 19.99 and an Int called
// `quantityOrdered` set to 3. Convert `quantityOrdered` to a Double and
// multiply it by `price` to calculate `orderTotal`. Print the result.


// TODO 27: Create a String called `ageInput` set to "15". Use Int(...) to
// convert it to an optional Int called `ageAsInt`. Print it using
// `?? "invalid age"` so the app doesn't crash if conversion fails.


// TODO 28: `as?` is used to safely check what type a value actually is.
// Given `let mysteryValue: Any = 7`, use
// `if let number = mysteryValue as? Int { ... } else { ... }`
// to print "It's an Int: 7" if the cast works, or "Not an Int" if it doesn't.
// Then change mysteryValue to "hello" and confirm the else branch runs instead.
let mysteryValue: Any = 7
// Your code here:


// TODO 29 (bonus): Explain in a comment why `Int(userInput)` returns an
// Int? (optional) instead of a plain Int, and why that matters when you're
// building an app that takes text input from a user.


print("\n=== PART 9: Challenge — Put It All Together (12 min) ===")

/*:
 Write a small program below that simulates a simple grading tool —
 without using an array. Instead, use a `for` loop over a range and a
 `switch` on the loop counter to look up each score, like this starter:

 ```
 for i in 1...5 {
     let score: Int
     switch i {
     case 1: score = 95
     case 2: score = 62
     case 3: score = 78
     case 4: score = 88
     default: score = 51
     }
     // ... work with `score` here
 }
 ```

 Using that pattern:
 1. Extend the switch to cover 7 scores of your choosing (update the range
    to `1...7` and add cases 5 and 6, with `default` covering the last one).
 2. Inside the loop, use an `if/else if/else` chain (or switch) to convert
    each `score` into a letter grade (A/B/C/D/F).
 3. Use a ternary operator somewhere to label each score "Pass" or "Fail".
 4. Use a `while` loop (with its own counter, before or after the for loop)
    to count how many of your scores were 70 or above, and print that count.
 5. Use type conversion to turn each score into a String and build one
    combined summary sentence (e.g. using String(score) and +).
 6. Print a line for each score in this format:
    "Score: 88 -> Grade: B -> Pass"

 This is your exit ticket — show it to your teacher (or submit the file)
 before you leave.
*/

// Your challenge code here:
