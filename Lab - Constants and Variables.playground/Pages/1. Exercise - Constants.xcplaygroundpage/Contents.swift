/*:
 ## Exercise - Constants

 Declare a constant called `friends` to represent the number of friends you have on social media. Give it a value between 50 and 1000. Print out the value by referencing your constant.
 */
let friends = 170 //why it is a constant? number of friends on social media can change!
print(friends)
/*:
 Now assume you go through and remove friends that aren't active on social media. Attempt to update your `friends` constant to a lower number than it currently is. Observe what happens and then move to the next step.
 */
print("We can`t change the constants, only variables")
var friendsOnSocialMedia: Int
friendsOnSocialMedia = friends
friendsOnSocialMedia += 5
print(friendsOnSocialMedia)
/*:
 Does the above code compile? Why not? Print your explanation to the console using the `print` function. Go back and delete your line of code that updates the `friends` constant to a lower number so that the playground will compile properly.
 */
print(friends - 5) // I dont want to change the constant, I only print a lower number

//: page 1 of 10  |  [Next: App Exercise - Step Goal](@next)
