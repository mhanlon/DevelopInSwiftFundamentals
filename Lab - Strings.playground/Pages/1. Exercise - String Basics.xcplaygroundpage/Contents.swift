/*:
 ## Exercise - String Basics
 
 Create a `name` constant and assign it a string literal representing your name.
 */
let name = "Roberta"

/*:
 Create a `favoriteQuote` constant and assign it the following string literal:
 
 - "My favorite quote is <INSERT QUOTE HERE>."
 
 Write in your own favorite quote where indicated, and be sure to include escaped quotation marks. When finished, print the value of `favoriteQuote`.

 - callout(Example): If your favorite quote is "The grass is always greener on the other side" the value of `favoriteQuote` should be such that printing `favoriteQuote` results in the following:
    * `My favorite quote is "The grass is always greener on the other side."`
 */
let myFavouriteQuote = "When life gives you lemons, make lemonade"
print(myFavouriteQuote)

/*:
 Write an if-else statement that prints "There's nothing here" if `emptyString` is empty, and "It's not as empty as I thought" otherwise.
 */
let emptyString = ""

if emptyString.isEmpty {
    print("there's nothing here")
} else {
    print("it's not as empty as I thought")
}
//: page 1 of 5  |  [Next: Exercise - Concatenation and Interpolation](@next)
