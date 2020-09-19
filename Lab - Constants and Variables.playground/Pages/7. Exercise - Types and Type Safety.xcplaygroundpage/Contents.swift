/*:
 ## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */
var firstDecimal: Double
var secondDecimal: Double

/*:
 Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var trueOrFalse: Bool = true
// firstDecimal = trueOrFalse
print("The code cannot be complied, because the type of \"firstDecimal\" and the one of \"trueOrFalse\" are different.")
/*:
 Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var stringNumber = "01234"
//firstDecimal = stringNumber
print("The code cannot be complied, because the type of \"firstDecimal\" and the one of \"stringNumber\" are different.")
/*:
 Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var wholeNumber = 100
// firstDecimal = wholeNumber
print("The type of \"firstDecimal\" is Double, while that of \"wholeNumber\" is Int. These variables do not match in terms of their types.")
//: [Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
