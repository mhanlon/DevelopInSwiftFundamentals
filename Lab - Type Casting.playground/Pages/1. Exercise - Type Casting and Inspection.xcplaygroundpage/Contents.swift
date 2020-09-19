/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var items: [Any] = [0.0001, 0.1, 1.11, 1, 5, "Kimiaki", "Shirahama", true, false]
print(items)

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in items {
    if let item = item as? Int {
        print("The integer has a value of \(item)")
    }
    if let item = item as? Double {
        print("The double has a value of \(item)")
    }
    if let item = item as? String {
        print("The string has a value of \(item)")
    }
    if let item = item as? Bool {
        print("The boolean has a value of \(item)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var dict: [String: Any] = ["first":3.3, "second":3, "thrid":"22", "fourth":true]
print(dict)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total = 0.0
for (key, value) in dict {
    if let value = value as? Double {
        total += value
        print("1. \(key): \(value)")
    }
    else if let value = value as? Int {
        total += Double(value)
        print("2. \(key): \(value)")
    }
    else if let value = value as? String {
        total += 1.0
        print("3. \(key): \(value)")
    }
    else if let value = value as? Bool {
        total += (value ? 2.0 : -3.0)
        print("4. \(key): \(value)")
    }
}
print(total)

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2 = 0.0
for (key, value) in dict {
    if let value = value as? Double {
        total2 += value
        print("1. \(key): \(value)")
    }
    else if let value = value as? Int {
        total2 += Double(value)
        print("2. \(key): \(value)")
    }
    else if let value = value as? String {
        if let valueConverted = Double(value) {
            total2 += valueConverted
        }
        print("3. \(key): \(value)")
    }
}
print(total2)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
