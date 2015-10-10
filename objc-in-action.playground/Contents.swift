//: Playground - noun: a place where people can play

import UIKit

func performMagic(thingy: String) -> String {
    return thingy
}

performMagic("Hey")

var magicFunction = performMagic
magicFunction("You")

var newMagicFunction = {
    (thingy: String) -> String in
    return thingy
}

var adderFunction: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a + b
}

adderFunction(1, 3)

func doComplicatedStuff(complition:() ->()) {
    complition()
}

doComplicatedStuff { magicFunction("Hello") }