//
//  ViewController.swift
//  PassDataProject
//
//  Created by Pavel on 15.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var returnLabel: UILabel!
    
    @IBAction func sendPressed(button: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else {return}
        guard let scv = segue.source as? SecondViewController else {return}
        self.returnLabel.text = scv.label.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

