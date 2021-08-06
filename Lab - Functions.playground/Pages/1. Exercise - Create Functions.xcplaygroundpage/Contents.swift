/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("Hello! My name is Miłosz Staszewski and I'm an avid Mac user.")
}
introduceMyself()

//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
let randomNum = Int.random(in: 0...4)

switch randomNum {
case 0:
    print("Tough luck!")
case 1:
    print("Keep up the good work!")
case 2:
    print("Hold strong there!")
case 3:
    print("Incoming!")
case 4:
    print("Make no mistake: moving is living.")
default:
    break
}

/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
