//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Pavel on 17.04.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String! 
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed(button: UIButton){
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard !login.isEmpty else {
            label.text = "Еnter password!"
            return
            
        }
        
        label.text = "Hello, \(login!)"
    }

}

