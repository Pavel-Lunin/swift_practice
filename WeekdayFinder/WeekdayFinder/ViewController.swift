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
    @IBOutlet weak var findWeekDayBTN: UIButton!
    
    override func viewDidLoad() {
        findWeekDayBTN.layer.cornerRadius = 5
    }
   
    override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    
    @IBAction func findWeekDay() {
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else {return}
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else {return}
        
        let dateFormatter = DateFormatter()
        let usLocale = Locale(identifier: "en_US")
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = usLocale
        
        let weekDay = dateFormatter.string(from: date)
        
        resultLabel.text = weekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

