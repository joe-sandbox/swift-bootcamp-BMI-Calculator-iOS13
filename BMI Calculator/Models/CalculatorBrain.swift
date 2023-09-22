//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Horst Josef Grenz Meza on 2/9/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi : BMI?
    
    let metaBMI = [
        "underweight": BMI(value: 18.5, advice: "Eat more pies!", color: UIColor.cyan),
        "normal": BMI(value:25, advice: "Fit as a fiddle!", color: UIColor.systemGreen),
        "obesity": BMI(value: 25, advice: "Eat fewer pies!", color: UIColor.orange),
    ]
    
    
    
    
    mutating func calculateBMI(w weight:Float,h height:Float)->Float{
        let bmiValue = Float(weight) / Float(pow(height,2))
        var key = "obesity"
        if bmiValue < 18.5{
            key = "underweight"
        }else if bmiValue < 24.9{
            key = "normal"
        }
        let ad : String = metaBMI[key]?.advice ?? ""
        let col : UIColor = metaBMI[key]?.color ?? UIColor.gray
        print("calculateBMI result [w:\(weight) ,h:\(height)]: \(bmiValue) - \(ad) \(col)")
        bmi = BMI(value: bmiValue, advice:ad, color: col)
        return bmiValue
    }
    func getBMIFormatted()->String{
        let sbmi : Float = self.bmi?.value ?? 0.0
        return String(format: "%.1f",sbmi)
    }
    func getAdvice()->String{
        let sbmi : String = self.bmi?.advice ?? "error"
        return sbmi
    }
    func getColor()->UIColor{
        let sbmi : UIColor = self.bmi?.color ?? UIColor.gray
        return sbmi
    }
    
}
