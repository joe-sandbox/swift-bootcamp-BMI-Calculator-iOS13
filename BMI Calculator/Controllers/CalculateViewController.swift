//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var calcBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.2fKg", sender.value)
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let h : Float = self.heightSlider.value
        let w : Float  = self.weightSlider.value
        print("calculatePressed h:\(h)")
        _ = calcBrain.calculateBMI(w:w,h:h)
        self.performSegue(withIdentifier: "goToResultSegue", sender: self)
    }
    
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultSegue"{
            let destVC = segue.destination as! ResultViewController
            //let bmi = String(format: "%.2f", calculateBMI())
            //destVC.updateBMILabel(text: bmi)
            destVC.bmi = calcBrain.getBMIFormatted()
            destVC.advice = calcBrain.getAdvice()
            destVC.color = calcBrain.getColor()
            
            
        }
    }
}

