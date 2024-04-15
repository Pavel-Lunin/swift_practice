//
//  ViewController.swift
//  TConverter
//
//  Created by Pavel on 27.03.2024.
//

import UIKit

class ViewController: UIViewController {
    let initialValues = 30
    
    @IBOutlet weak var celsiusLabel: UILabel! {didSet {celsiusLabel.text = String(initialValues) + "ºC"}}
    @IBOutlet weak var fahrenheitLabel: UILabel! {didSet {fahrenheitLabel.text = String(fahrenheitConverter(temperatureCelsius: initialValues)) + "F"}}
    
    @IBOutlet weak var slider: UISlider!{
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = Float(initialValues)
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(sender.value)
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        fahrenheitLabel.text = String(fahrenheitConverter(temperatureCelsius: temperatureCelsius)) + "ºF"
    }
    
    func fahrenheitConverter(temperatureCelsius: Int) -> Int {
       let temperatureFahrenheit = (temperatureCelsius * 9) / 5 + 32
        return temperatureFahrenheit
    }
    
}

