/*:
## Exercise - Optionals

 >Throughout the exercises in this playground, you will be printing optional values. The Swift compiler will display a warning: "Expression implicitly coerced from `Int?` to Any". For the purposes of these exercises, you can ignore this warning.

 Imagine you have an app that asks the user to enter his/her age using the keyboard. When your app allows a user to input text, what is captured for you is given as a `String`. However, you want to store this information as an `Int`. Is it possible for the user to make a mistake and for the input to not match the type you want to store?

 Declare a constant `userInputAge` of type `String` and assign it "34e" to simulate a typo while typing age. Then declare a constant `userAge` of type `Int` and set its value using the `Int` initializer that takes an instance of `String` as input. Pass in `userInputAge` as the argument for the initializer. What error do you get?
 */
let userInputAge = "34"
let userAge: Int? = Int(userInputAge)
print(userAge)

// error message:
//Playground execution failed:
//
//error: 1. Exercise - Optionals.xcplaygroundpage:11:20: error: value of optional type 'Int?' must be unwrapped to a value of type 'Int'
//let userAge: Int = Int(userInputAge)
//                   ^
//
//1. Exercise - Optionals.xcplaygroundpage:11:20: note: coalesce using '??' to provide a default when the optional value contains 'nil'
//let userAge: Int = Int(userInputAge)
//                   ^
//                                     ?? <#default value#>
//
//1. Exercise - Optionals.xcplaygroundpage:11:20: note: force-unwrap using '!' to abort execution if the optional value contains 'nil'
//let userAge: Int = Int(userInputAge)
//                   ^
//                                    !
//:  Go back and change the type of `userAge` to `Int?`, and print the value of `userAge`. Why is `userAge`'s value `nil`? Provide your answer in a comment or print statement below.
print("""
userAge's value is nil, because the string \"34e\" could not be converted to a proper integer and the class' failable initializer returns nil in this type of scenario.
""")
/*:
 Now go back and fix the typo on the value of `userInputAge`. Is there anything about the value printed that seems off?

 Print `userAge` again, but this time unwrap `userAge` using the force unwrap operator.
 */
print("""
    The value has beed printed as 'Optional(34)'. After force unwrapping it – it prints as the regular Int.
    """)
print(userAge!)
//:  Now use optional binding to unwrap `userAge`. If `userAge` has a value, print it to the console.
if let userAge = userAge {
    print(userAge)
}
/*:
page 1 of 6  |  [Next: App Exercise - Finding a Heart Rate](@next)
 */
