/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var myCollection: [Any] = ["teddy", 34, false, true, 34.6, "iPhone", 3755]
print(myCollection)

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for i in myCollection{
    if let item = i as? Int{
        print("The integer has a value of \(item)")
    }else if let item = i as? String{
        print("The String has a value of \(item)")
    }else if let item = i as? Bool{
        print("The Boolean has a value of \(item)")
    }else if let item = i as? Double{
        print("The Double has a value of \(item)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var myDictio: [String: Any] = ["uno": 123, "due": 56.98, "tre": "la mia stringa", "quattro": false]
print(myDictio)

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for i in myDictio{
    if let value = i.value as? Bool {
            if value {
                total += 2
            } else {
                total -= 3
            }
        } else if let value = i.value as? Double {
            total += value
        } else if let value = i.value as? Int {
            total += Double(value)
        } else if let _ = i.value as? String {
            total += 1
        }
}

print(total)

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for i in myCollection{
    if let item = i as? Double {
        total2 += item
    }else if let item = i as? Int{
        total2 += Double(item)
    }else if let item = i as? String{
        if let stringToNumber = Double(item){
        total2 += stringToNumber
    }
    }
}
print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
