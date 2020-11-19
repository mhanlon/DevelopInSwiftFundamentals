/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let mixedCollection: [Any] = ["Ciao", true, 2, 3.6]
print(mixedCollection)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in mixedCollection {
    if item is Bool {
        print("The boolean has a value of \(item)")
    } else if item is Double {
        print("The double has a value of \(item)")
    } else if item is Int {
        print("The integer has a value of \(item)")
    } else if item is String {
        print("The string has a value of \(item)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let stringAnyDictionary: [String: Any] = ["A": 2, "B": true, "C": 2.5, "D": "D", "E": false]
print(stringAnyDictionary)

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, value) in stringAnyDictionary {
    if let selectedValue = value as? Bool {
        if selectedValue == true {
            total += 2
        } else {
            total -= 3
        }
    } else if let selectedValue = value as? Double {
        total += selectedValue
    } else if let selectedValue = value as? Int {
        total += Double(selectedValue)
    } else if let _ = value as? String {
        total += 1
    }
}

print(total)

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (_, value) in stringAnyDictionary {
    if value is Bool {
        continue
    } else if let selectedValue = value as? Double {
        total2 += selectedValue
    } else if let selectedValue = value as? Int {
        total2 += Double(selectedValue)
    } else if let selectedValue = value as? String,
        let val2 = Double(selectedValue) {
        total2 += val2
    }
}

print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
