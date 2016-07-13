//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var unicornLevelLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let fullName = "Matthew Amerige"
		var phoneNumber = 8675309
		
		print(fullName.whisper())
		print(fullName.shout())
		print(fullName.pigLatin)
		print(fullName.points)
		
		print(phoneNumber.half())
		print(phoneNumber.isDivisibleBy(67))
		print(phoneNumber.squared)
		print(phoneNumber.square())
		print(phoneNumber.halved)
		
		unicornLevelLabel.text = fullName.unicornLevel
		
		
	}
}


