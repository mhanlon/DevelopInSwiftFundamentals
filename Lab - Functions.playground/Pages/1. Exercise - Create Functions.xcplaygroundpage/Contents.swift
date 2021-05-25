/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself()
{ print("My name is Mohamed Elkanzi")}
introduceMyself()
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
 */
func magicEightBall(){
    let randomNum = Int.random(in: 0...4)
    if(randomNum==0)
    {
        print(0)
    }
 else if(randomNum==1)
 {
    print(1)
 }
 else if (randomNum==2){
    print(2)
 }
    else if(randomNum==3)
    {
        print(3)
    }
    else{
        print(4)
    }
}
magicEightBall()
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
