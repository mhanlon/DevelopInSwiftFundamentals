/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */
var firstDecimal: Double
var secondDecimal: Double
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFale = true
//firstDecimal = trueOrFale
print("Swift provides type safety meaning that it checks for proper data type storage in each of variables. It allows developer to omit errors and the compiler to provide proper optimizations.")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var testString = "This is our demonstartional string."
//firstDecimal = testString
print("Similarly to the situation above, type safety provided by Swift won't allow for this type of assignment.")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var wholeNumber = 7
//firstDecimal = wholeNumber
print("The compiler will notice that there is a type mismatch – even tough it whould be possible to store integer inside a value opf type Double, the language will enforce type safety attitude.")
/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
