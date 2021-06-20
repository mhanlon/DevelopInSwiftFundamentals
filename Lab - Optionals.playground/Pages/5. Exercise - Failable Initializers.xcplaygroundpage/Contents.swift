/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2017.
 */
struct Computer{
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int){
        if ram <= 0 || yearManufactured <= 1970 || yearManufactured >= 2017 {
            return nil
        }
        self.ram = ram
        self.yearManufactured = yearManufactured
    }
    
}

/*:
 Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
 */
let c1 = Computer(ram: 256, yearManufactured: 2001)
let c2 = Computer(ram: 4096, yearManufactured: 2018)

if let uc1 = c1 {
    print("c1: ram: \(uc1.ram) year:\(uc1.yearManufactured)")
}

if let uc2 = c2 {
    print("21: ram: \(uc2.ram) year:\(uc2.yearManufactured)")
}
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
