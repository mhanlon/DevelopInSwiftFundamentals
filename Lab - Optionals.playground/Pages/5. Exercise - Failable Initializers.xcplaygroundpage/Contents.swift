/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2017.
 */
struct Computer{
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManu: Int) {
        if ram > 0 && yearManu > 1970 && yearManu < 2017{
            self.ram = ram
            self.yearManufactured = yearManu
        }else{
            return nil
        }
    }
}

/*:
 Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
 */
 let pcOne = Computer(ram: 0, yearManu: 1996)
 if let compu = pcOne{
    print(compu.ram)
    print(compu.yearManufactured)
}

let pcTwo = Computer(ram: 24, yearManu: 1998)
if let compu = pcTwo{
    print(compu.ram)
    print(compu.yearManufactured)
}

//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
