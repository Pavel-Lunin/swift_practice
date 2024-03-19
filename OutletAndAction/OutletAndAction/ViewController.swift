//
//  ViewController.swift
//  OutletAndAction
//
//  Created by Pavel on 17.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func changeTextInLabel(_ sender: UIButton) {
        
        if (label.text == "Hello, World!") {
            label.text = "Label"
            return
        }
        label.text = "Hello, World!"
    }
    @IBAction func sayInConsole(_ sender: UIButton) {
        print("HELLO, world in the console!")
    }
}

