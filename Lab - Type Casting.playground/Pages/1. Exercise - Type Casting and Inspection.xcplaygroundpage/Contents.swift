/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let myCollection: [Any] = [3.14, 0.69, 1, 2, 4, "foo", "bar", true, false]
print(myCollection)

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in myCollection {
    if let myInt = item as? Int {
        print("The integer as a value of \(myInt)")
    }
}

for item in myCollection {
    if let myDouble = item as? Double {
        print("The double as a value of \(myDouble)")
    }
}

for item in myCollection {
    if let myString = item as? String {
        print("The string as a value of \(myString)")
    }
}

for item in myCollection {
    if let myBool = item as? Bool {
        print("The boolean as a value of \(myBool)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let mydict: [String:Any] = ["pi": 3.14, "golden": 1.618, "apples":4, "rice":34, "name":"john", "car":"buick", "on":true, "isDirty":false]
for (key, value) in mydict {
    print("\(key): \(value)")
}

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, value) in mydict {
    if let mval  = value as? Int {
        total += Double(mval)
    }else if let mval  = value as? Double {
        total += mval
    }else if value is String {
        total += 1
    }else if let mval  = value as? Bool {
        if mval == true {
            total += 2
        }else{
            total -= 3
        }
    }
}
print(total)

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (_, value) in mydict {
    if let mval  = value as? Int {
        total2 += Double(mval)
    }else if let mval  = value as? Double {
        total2 += mval
    }else if let mval = value as? String {
        let dval = Double(mval)
        if let umval = dval{
            total2 += umval
        }
    }
}
print(total2)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
