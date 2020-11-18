/*:
 ## Exercise - Parameters and Argument Labels
 
 Write a new introduction function called `introduction`. It should take two `String` parameters, `name` and `home`, and one `Int` parameter, `age`. The function should print a brief introduction. I.e. if "Mary," "California," and 32 were passed into the function, it might print "Mary, 32, is from California." Call the function and observe the printout.
 */
func introduction(name: String, home: String, age: Int) {
    print("\(name), \(age), is from \(home).")
}

introduction(name: "Mary", home: "California", age: 32)

/*:
 Write a function called `almostAddition` that takes two `Int` arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.
 */
func almostAddition(_ firstNumber: Int, secondNumber: Int) {
    print(firstNumber + secondNumber - 2)
}

almostAddition(100, secondNumber: 84)

/*:
 Write a function called `multiply` that takes two `Double` arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, "by", that differs from the internal label. Call the function and observe the printout.
 */
func multiply(_ firstNumber: Double, by secondNumber: Double) {
    print(firstNumber*secondNumber)
}

multiply(9.7, by: 2.9)

//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Progress Updates](@next)
