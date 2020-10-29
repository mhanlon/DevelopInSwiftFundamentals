/*:
 ## App Exercise - Workout or Nil

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 Have you ever accidentally tapped a button in an app? It's fairly common. In your fitness tracking app, you decide that if a user accidentally taps a button to start a workout and then ends the workout within 10 seconds, you simply don't want to create and log the workout. Otherwise the user would have to go delete the workout from the log.

 Create a `Workout` struct that has properties `startTime` and `endTime` of type `Double`. Dates are difficult to work with, so you'll be using doubles to represent the number of seconds since midnight, i.e. 28800 would represent 28,800 seconds, which is exactly 8 hours, so the start time is 8am.

 Write a failable initializer that takes parameters for your start and end times, and then checks to see if they are fewer than 10 seconds apart. If they are, your initializer should fail. Otherwise, they should set the properties accordingly.
 */
struct Workout {
    var startTime: Double
    var endTime: Double

    init?(startTime: Double, endTime: Double) {
        if endTime - startTime < 10 {
            return nil
        } else {
            self.startTime = startTime
            self.endTime = endTime
        }
    }
}
/*:
 Try to initialize two instances of a `Workout` object. Unwrap each of them and print its properties. One of them should not be initialized because the start and end times are too close together. The other should successfully initialize a `Workout` object.
 */
let fakeWorkout = Workout(startTime: 50000, endTime: 50002)
if let workout = fakeWorkout {
    print(workout.startTime)
    print(workout.endTime)
}

let realWorkout = Workout(startTime: 50000, endTime: 50500)
if let workout = realWorkout {
    print(workout.startTime)
    print(workout.endTime)
}

/*:

 _Copyright © 2018 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 6 of 6
