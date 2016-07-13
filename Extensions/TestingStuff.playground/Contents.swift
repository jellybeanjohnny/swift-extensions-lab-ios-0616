//: Playground - noun: a place where people can play

import Cocoa

let letter = "1"

print (!("0"..."9" ~= letter))

let number = 4

print(0...4 ~= number)




func totalPointsForString(input: String) -> Int {
	
	var totalPoints = 0
	
	for letter in input.characters {
		// Checking to see if letter falls between "0" and "9" inclusively. This is to prevent
		if !("0"..."9" ~= letter) && (letter != " ") {
			switch letter {
			case "a", "e", "i", "o", "u": totalPoints += 2
			default: totalPoints += 1
			}
		}
	}
	return totalPoints
}

totalPointsForString("   ")