//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by Pavel on 20.03.2024.
//

import UIKit

class ViewController: UIViewController {
    // TF -TextField
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    
    @IBAction func findWeekDay() {
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTF.text!)
        dateComponents.month = Int(monthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let date = calendar.date(from: dateComponents)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date!)
        
        resultLabel.text = weekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

