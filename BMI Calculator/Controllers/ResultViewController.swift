//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Horst Josef Grenz Meza on 2/9/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultBackgroun: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    
    var advice : String = "..."
    var color : UIColor = UIColor.clear
    
    var bmi: String = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateBMI()
    }
    
    
    func updateBMI(){
        print("updating BMI...")
        print(bmi)
        print(advice)
        print(self.color)
        self.bmiLabel.text = bmi
        self.adviceLabel.text = advice
        self.resultBackgroun.backgroundColor = self.color
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
