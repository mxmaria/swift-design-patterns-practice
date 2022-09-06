struct NameStruct {
    var firstName: String
    var lastName: String
}

var joe = NameStruct(firstName: "Joe", lastName: "Smith")
var patric = joe

print("\(joe), \(patric)")

patric.firstName = "Patric"
patric.lastName = "McKenna"

print("\(joe), \(patric)")
