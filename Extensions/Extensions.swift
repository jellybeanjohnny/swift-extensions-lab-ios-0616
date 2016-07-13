//
//  Extensions.swift
//  Extensions
//
//  Created by Matt Amerige on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
	
	func whisper() -> String {
		return self.lowercaseString
	}
	
	func shout() -> String {
		return self.uppercaseString
	}
	
	var pigLatin: String {
		get {
			
			var pigLatinSentence = ""
			
			let strings = self.componentsSeparatedByString(" ")
			
			for (index, word) in strings.enumerate() {
				let pigLatinWord = convertWordToPigLatin(word)
				pigLatinSentence += pigLatinWord
				
				// Add a space after every word that is not the last word
				if index != strings.count - 1 {
					pigLatinSentence += " "
				}
			}
			return pigLatinSentence
		}
	}

	private func convertWordToPigLatin(word: String) -> String {
		if word.characters.count == 1 { return word }
		
		var pigLatinWord = word.lowercaseString
		
		let theFirstLetter = firstLetter(ofWord: pigLatinWord)
		
		pigLatinWord += theFirstLetter
		
		pigLatinWord.removeAtIndex(pigLatinWord.startIndex)
		
		pigLatinWord += "ay"
		
		if firstLetter(ofWord: pigLatinWord) == "'" {
			pigLatinWord.removeAtIndex(pigLatinWord.startIndex)
		}
		
		if firstLetter(ofWord: word) == firstLetter(ofWord: word).uppercaseString {
			// First letter should be upper case
			pigLatinWord.replaceRange(pigLatinWord.startIndex..<pigLatinWord.startIndex.successor(), with: firstLetter(ofWord: pigLatinWord).uppercaseString)
		}
		
		return pigLatinWord
	}
	
	private func firstLetter(ofWord word: String) -> String{
		return word.substringWithRange(word.startIndex..<word.startIndex.successor())
	}
	
	var points: Int {
		
		var totalPoints = 0
		
		let lowercaseSelf = self.lowercaseString
		
		for letter in lowercaseSelf.characters {
			// Checking to see if letter falls between "0" and "9" inclusively. This is to prevent any digits from falling into the switch statement
			if !("0"..."9" ~= letter) && (letter != " ") {
				switch letter {
				case "a", "e", "i", "o", "u", "y": totalPoints += 2
				default: totalPoints += 1
				}
			}
		}
		return totalPoints
	}
	
	
	
	
}



extension Int {
	
	func half() -> Int{
		return self / 2
	}
	
	func isDivisibleBy(number: Int) -> Bool {
		return self % number == 0
	}
	
	var squared: Int {
		return self * self
	}
	
	mutating func square() {
		self *= self
	}
	
	var halved: Int {
		return half()
	}
	
}

extension String {
	
	var unicornLevel: String {
		
		var unicornString = ""
		
		for letter in self.characters {
			
			if letter != " " {
				unicornString += "🦄"
			}
		}
		return unicornString
	}
	
}































