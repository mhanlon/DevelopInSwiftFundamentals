/*:
 ## App Exercise - Fitness Decisions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 You want your fitness tracking app to give as much encouragement as possible to your users. Create a variable `steps` equal to the number of steps you guess you've taken today. Create a constant `stepGoal` equal to 10,000. Write an if-else statement that will print "You're almost halfway there!" if `steps` is less than half of `stepGoal`, and will print "You're over halfway there!" if `steps` is greater than half of `stepGoal`.
 */


/*:
 Now create a new, but similar, if-else-if statement that prints "Way to get a good start today!" if `steps` is less than a tenth of `stepGoal`, prints "You're almost halfway there!" if `steps` is less than half of `stepGoal`, and prints "You're over halfway there!" if `steps` is greater than half of `stepGoal`.
 */
var stepGoal = 10000
var steps = 8000 // test values used were 20, 5000 and 8000
if steps  < stepGoal / 10{
    print ("you made a start")
}
else if steps <= stepGoal/2{
    print ("you are almost halfway")
}
else if steps > stepGoal/2{
    print ("over half way")
}

//: [Previous](@previous)  |  page 3 of 9  |  [Next: Exercise - Boolean Practice](@next)
