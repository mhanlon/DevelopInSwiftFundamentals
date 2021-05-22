/*:
 ## Exercise - Basic Arithmetic
 
 You decide to build a shed and want to know beforehand the area of your yard that it will take up. Create two constants, `width` and `height`, with values of 10 and 20, respectively. Create an `area` constant that is the result of multiplying the two previous constants together, and print out the result.
 */
let width = 10
let length = 20
let area = width * length
print ("the area needed for the shed is \(area) square feet") // ok I added a bit




/*:
 You decide that you'll divide your shed into two rooms. You want to know if dividing it equally will leave enough room for some of your larger storage items. Create a `roomArea` constant that is the result of dividing `area` in half. Print out the result.
 */
let roomArea = area/2
print("each half of the room is \(roomArea) square feet")

/*:
 Create a `perimeter` constant whose value equals `width` plus `width` plus `height` plus `height`, then print out the result.
 */
let perimeter = width * 2 + length * 2
print("The perimeter of the room is \(perimeter) feet")

/*:
 Print what you would expect the result of integer division of 10 divided by 3 to be. Create a constant, `integerDivisionResult` that is the result of 10 divided by 3, and print the value.
 */
let integerDivisionResult = 10/3
print (integerDivisionResult)// does not show the decimal part as 10 and 3 are considered to be integers

/*:
 Now create two constants, `double10` and `double3`, set to 10 and 3, and declare their types as `Double` values. Declare a final constant `divisionResult` equal to the result of `double10` divided by `double3`. Print the value of `divisionResult`. How does this differ from the value when using integer division?
 */
let double10 : Double = 10
let double3: Double = 3
let divisionResult = double10 / double3
print (divisionResult) // this time the decimal is included
/*:
 Given the value pi (3.1415927), create a `radius` constant with a value of 5.0, then calculate the diameter and circumference of the circle using the following equations, and print the results:
 
 *diameter = 2 * radius*
 
 *circumference = 2 * pi * radius.*
 */
let pi = 3.1415927
let radius = 5.0
let diameter = radius * 2
let circumference = 2 * pi * radius
print ("The diameter is \(diameter)  the circumference is \(circumference) ")

/*:
 Create an integer constant. Using the remainder operator, set its value to the remainder of 12 divided by 5.
 */
let intConstant: Int = 12 % 5 // % returns the remainder

print (intConstant)

/*:
 Create two integer constants, `even` and `odd` and set them to any even integer and any odd integer, respectively. For each, print the remainder of dividing the value by 2. Looking at the results, how do you think you could use the remainder operator to determine if an integer is even or odd?
 */
let even  = 10
let odd = 5

print (even / 2)
print (odd / 2)
// using the remainder operator and if zero the value is even, when divided by 2

//: page 1 of 8  |  [Next: App Exercise - Fitness Calculations](@next)
