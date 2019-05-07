//
//  ViewController.swift
//  belajarUIkit
//
//  Created by M.Syarif Hidayat on 24/04/19.
//  Copyright © 2019 self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightCount: UILabel!
    @IBOutlet weak var heightCount: UILabel!
    @IBOutlet weak var bmiCount: UILabel!
    @IBOutlet weak var bmiIndicator: UILabel!
    @IBOutlet weak var weight: UISlider!
    @IBOutlet weak var height: UISlider!
    @IBOutlet weak var theme: UISegmentedControl!
    @IBOutlet var viewBackground: UIView!
    var bmi = Float()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    
    @IBAction func weightSlider(_ sender: Any) {
        weightCount.text = "\(weight.value) Kg"
        calculateBmi()
    }
    
    @IBAction func heightSlider(_ sender: Any) {
        heightCount.text = "\(height.value) m"
       calculateBmi()
    }
    
    func calculateBmi() {
        bmi = weight.value / (height.value*height.value)
        bmiCount.text = "\(bmi) Kg/m2"
        
        if bmi < 18.5 {
           bmiIndicator.text = "UnderWeight"
            bmiIndicator.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }
        if bmi >= 18.5 && bmi <= 24.9{
            bmiIndicator.text = "HealthyWeight"
            bmiIndicator.textColor = #colorLiteral(red: 1, green: 0, blue: 0.2744619846, alpha: 1)
        }
        if bmi >= 25 && bmi <= 29.9 {
            bmiIndicator.text = "OverWeight"
            bmiIndicator.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        if bmi >= 30 {
            bmiIndicator.text = "Obesity"
            bmiIndicator.textColor = #colorLiteral(red: 0.3657849431, green: 0.3685678542, blue: 1, alpha: 1)
        }
    }
    
    
    @IBAction func lightDark(_ sender: Any) {
        if theme.selectedSegmentIndex == 1 {
            view.backgroundColor = UIColor.gray
        }
        else {
            view.backgroundColor = UIColor.white
        }
    }
    
    
    

}
    


