
import UIKit

var greeting = "Hello"
let name = "John"
greeting = "Hi"
// won't work -> name = "Brad"

var personGreeting = greeting + ", " + name


let biggest8BitIntPossible = Int8.max
let big32BitInt = Int32.max

let big32BitUInt = UInt32.max

let myFloat = 3.14 as Float

var firstName = "John"
var lastName = "Clem"
//var fullName = firstName + " " + lastName
var fullName = "\(firstName) \(lastName)"

for character in fullName {
    var theCharacter = "\(character)"
}

//var names : Array<String> = Array<String>()
//names.append("John")
//names.append("Brad")
var names = ["John", "Brad"]
names

//var sportsTeams = Dictionary<String, String>()
//sportsTeams["SEA"] = "Seahawks"
//sportsTeams.updateValue("49ers", forKey: "SFO")
var sportsTeams = ["SEA" : "Seahawks", "SFO" : "49ers"]

var myTeam = sportsTeams["SEA"]



var QB = "Russell Wilson"
var anotherQB = QB

anotherQB = "Some Idiot"

var redView = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
redView.backgroundColor = UIColor.redColor()
redView


var anotherView = redView as UIView
anotherView.backgroundColor = UIColor.purpleColor()
redView












