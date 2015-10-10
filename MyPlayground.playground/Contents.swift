//: Playground - noun: a place where people can play

import UIKit

var img = [
    [3, 15, 3],
    [25, 3, 4, 0, 2],
    [14, 8, 22]
]

func raiseLowNumbers(inout inImage img:[[Int]], to number:Int) {
    for i in 0..<img.count {
        for j in 0..<img[i].count {
            if img[i][j] < number {
                img[i][j] = number
            }
        }
    }
}

raiseLowNumbers(inImage: &img, to: 5)

if (true) { print("true") }

for i in 0..<5 {
    print(i)
}

let a = [1, 2.5]

let array: [Int] = []
let array = [Int]()

