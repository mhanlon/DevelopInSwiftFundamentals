/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let myCollection : [Any] = [1.1, 3434.1, 2, 3, "Yannis", "Toto", true, false, false]

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in myCollection {
    if let value = item as? Int {
        print("Int \(value)")
    } else if let value = item as? String {
        print("String \(value)")
    } else if let value = item as? Bool {
        print("Bool \(value)")
    } else if let value = item as? Double {
        print("Double \(value)")
    }
}
/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let stringAnything: [String: Any] = [
    "keyOne": 1,
    "keyTwo": "2",
    "keyThree": true,
    "keyFour": 4.0,
]
print(stringAnything)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for value in stringAnything.values {
    if let value = value as? Double {
        total += value
    } else if let value = value as? Int {
        total += Double(value)
    } else if let value = value as? Bool {
        if value {
            total += 2
        } else {
            total -= 3
        }
    } else if value is String {
        total += 1
    }
}

print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2 = 0.0
for value in stringAnything.values {
    if let value = value as? Double {
        total2 += value
    } else if let value = value as? Int {
        total2 += Double(value)
    } else if let value = value as? String,
        let numValue = Double(value) {
        total2 += numValue
    }
}
print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
