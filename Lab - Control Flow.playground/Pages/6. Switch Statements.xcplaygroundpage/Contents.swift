/*:
 ## Exercise - Switch Statements
 
 Imagine you're on a baseball team nearing the end of the season. Create a `leaguePosition` constant with a value of 1. Using a `switch` statement, print "Champions!" if the `leaguePosition` is 1, "Runners up" if the value is 2, "Third place" if the value is 3, and "Bad season!" in all other cases.
 */
let leaguePosition = 3 // test with 1 2 3 & 4+
switch leaguePosition {
case 1:
    print ("Champions")
case 2:
    print ("runners up")
case 3:
    print ("third place")
default:
    print ("give up and go home, your useless")
}

/*:
 Write a new `switch` statement that prints "Medal winner" if `leaguePosition` is within the range of 1-3. Otherwise, print "No medal awarded".
 */

switch leaguePosition {
case 1 , 2, 3:
    print ("In the medals")
default:
    print ("give up and go home, your useless")
}

//: [Previous](@previous)  |  page 6 of 9  |  [Next: App Exercise - Heart Rate Zones](@next)
