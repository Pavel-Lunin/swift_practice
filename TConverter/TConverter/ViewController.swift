//
//  ViewController.swift
//  TConverter
//
//  Created by Pavel on 27.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 30
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let temperatureCelsius = sender.value
        celsiusLabel.text = "\(temperatureCelsius)"
    }
    
}

