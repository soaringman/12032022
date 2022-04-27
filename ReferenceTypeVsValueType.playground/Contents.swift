import UIKit

//Reference Type

class Dog {
    var wasFed = false
}

let dog = Dog()

let puppy = dog

puppy.wasFed = true

dog.wasFed
puppy.wasFed


//Value Type

var a = 42
var b = a
b += 1

a
b

//Example with Struct

struct Cat {
    var wasFed = false
}

var cat = Cat()
var kitty = cat

kitty.wasFed = true

cat.wasFed
kitty.wasFed

