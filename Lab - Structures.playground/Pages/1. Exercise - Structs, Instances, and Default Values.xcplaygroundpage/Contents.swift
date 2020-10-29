/*:
 ## Exercise - Structs, Instances, and Default Values
 
 Imagine you are creating an app that will monitor location. Create a `GPS` struct with two variable properties, `latitude` and `longitude`, both with default values of 0.0.
 */
struct GPS {
    var latitute = 0.0
    var longitude = 0.0
}
/*:
 Create a variable instance of `GPS` called `somePlace`. It should be initialized without supplying any arguments. Print out the latitude and longitude of `somePlace`, which should be 0.0 for both.
 */
var somePlace = GPS()
print(somePlace.latitute)
print(somePlace.longitude)
/*:
 Change `somePlace`'s latitude to 51.514004, and the longitude to 0.125226, then print the updated values.
 */
somePlace.latitute = 51.514004
somePlace.longitude = 0.125226
print(somePlace.latitute)
print(somePlace.longitude)
/*:
 Now imagine you are making a social app for sharing your favorite books. Create a `Book` struct with four variable properties: `title`, `author`, `pages`, and `price`. The default values for both `title` and `author` should be an empty string. `pages` should default to 0, and `price` should default to 0.0.
 */
struct Book {
    var title = ""
    var author = ""
    var pages = 0
    var price = 0.0
}
/*:
 Create a variable instance of `Book` called `favoriteBook` without supplying any arguments. Print out the title of `favoriteBook`. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of `favoriteBook` to reflect your favorite book. Then, using the properties of `favoriteBook`, print out facts about the book.
 */
var favoriteBook = Book()
print(favoriteBook.title)
favoriteBook.title = "Les Miserables"
favoriteBook.author = "Victor Hugo"
favoriteBook.pages = 1000
favoriteBook.price = 24.99

print("My favorite book is \(favoriteBook.title) by \(favoriteBook.author). It is \(favoriteBook.pages) pages long and costs \(favoriteBook.price) dollars to get the paperback copy.")
//: page 1 of 10  |  [Next: App Exercise - Workout Tracking](@next)
