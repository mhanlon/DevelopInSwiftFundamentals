/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var myArray: [Any] = [7, 8, 9, 77.7, 12.34, 19.39, "Amiga", "Mac", "Linux", true, true, false, false]

print(myArray)

for someItem in myArray {
    print(someItem)
}
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for someItem in myArray {
    if let intValue = someItem as? Int {
        print("The integer has a value of \(intValue)")
    } else if let doubleValue = someItem as? Double {
        print("The double has a value of \(doubleValue)")
    } else if let stringValue = someItem as? String {
        print("The string has a value of: \"\(stringValue)\"")
    } else if let boolValue = someItem as? Bool {
        print("The boolean has a value of \(boolValue)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let myDictionary: [String: Any] = ["first": 7, "second": 8, "third": 9, "fourth": 77.7, "fifth": 12.34, "sixth": 19.39, "seventh": "Amiga", "eighth": "Mac", "ninth": "Linux", "tenth": true, "eleventh": true, "twelfth": false, "thirteenth": false]

for (key, value) in myDictionary {
    print("\(key): \(value)")
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (_, value) in myDictionary {
    if let intValue = value as? Int {
        total += Double(intValue)
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if let stringValue = value as? String {
        total += 1
    } else if let boolValue = value as? Bool {
        if boolValue {
            total += 2
        } else {
            total -= 3
        }
    }
}

print("total: \(total)")
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, value) in myDictionary {
    if let intValue = value as? Int {
        total2 += Double(intValue)
    } else if let doubleValue = value as? Double {
        total2 += doubleValue
    } else if let stringValue = value as? String {
        if let doubleValue = Double(stringValue) {
            total2 += doubleValue
        }
    }
}

print("Total2: \(total2)")
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
