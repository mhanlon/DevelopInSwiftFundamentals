/*:
 ## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
 - Name: The user's name
 - Age: The user's age
 - Number of steps taken today: The number of steps that a user has taken today
 - Goal number of steps: The user's goal for number of steps to take each day
 - Average heart rate: The user's average heart rate over the last 24 hours
 */
let userName = "Irina"
//I choose the constant, because people usually don`t change their names. Or if in context of username: it must be like user ID, so it never changes.
var userAge = 30
//I choose variable, because users get elder.
var stepsToday = 3_500
//var, because number of steps taken changes.
let goal = 10_000
/* In my opinion: goal may change if user want to do more exersizes after some time (year, month),
 but in the same time goal must be the same for long period. I don`t know what is better var or let.*/
var heartRate = 65
// heart rate may change throgh the day.
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 */
//: [Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
