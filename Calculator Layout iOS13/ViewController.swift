//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelNum: UILabel!
    
    var num = 0
    var result = 0
    
    var lastOperator = ""
    
    func checkZero(){
        if labelNum.text == " 0  "{
            labelNum.text = ""
            print("In the function")
        }
        else if labelNum.text == "0"{
            labelNum.text = ""
            print("in the else if")
        }
        else{
            print("in the else")
        }
    }
    @IBAction func btnAC(_ sender: UIButton) {
        labelNum.text = String(0)
        result = 0
    }
    
    @IBAction func btnEqual(_ sender: UIButton) {
        
        if lastOperator == "+"{
            num = Int(labelNum.text ?? "0") ?? 0
            print("result before\(result)")
            result += num
            print("result after\(result)")
            num = 0
        }
        else if lastOperator == "-"{
            num = Int(labelNum.text ?? "0") ?? 0
            result -= num
            num = 0
        }
        else if lastOperator == "*"{
            num = Int(labelNum.text ?? "0") ?? 0
            result *= num
            num = 0
        }
        else if lastOperator == "/"{
            num = Int(labelNum.text ?? "0") ?? 0
            result /= num
            num = 0
        }
        else if lastOperator == "%"{
            num = Int(labelNum.text ?? "0") ?? 0
            result %= num
            num = 0
        }
        lastOperator = ""
        print("equal")
        labelNum.text = String(result)
        result = 0
    }
    @IBAction func btnPlus(_ sender: UIButton) {
        num = Int(labelNum.text ?? "0") ?? 0
        result += num
        labelNum.text = String(0)
        lastOperator = "+"
        print("Plus")

    }
    
    @IBAction func btnMinus(_ sender: UIButton) {
        num = Int(labelNum.text ?? "0") ?? 0
        if result == 0{
            result = num
        }
        else{
            result -= num
        }
        print("Minus \(result)")
        labelNum.text = String(0)
        lastOperator = "-"
    }
    
    @IBAction func btnMulti(_ sender: UIButton) {
        num = Int(labelNum.text ?? "0") ?? 0
        if result == 0{
            result = num
        }
        else{
            result -= num
        }
        labelNum.text = String(0)
        lastOperator = "*"
    }
    
    @IBAction func btnDevide(_ sender: UIButton) {
        num = Int(labelNum.text ?? "0") ?? 0
        if result == 0{
            result = num
        }
        else{
            result /= num
        }
        labelNum.text = String(0)
        lastOperator = "/"
    }
    
    @IBAction func btnModulus(_ sender: UIButton) {
        num = Int(labelNum.text ?? "0") ?? 0
        if result == 0{
            result = num
        }
        else{
            result %= num
        }
        labelNum.text = String(0)
        lastOperator = "%"
    }
    
    
    @IBAction func num0(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(0)
    }
    
    @IBAction func num1(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(1)
    }
    
    @IBAction func num2(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(2)
        
    }
    
    @IBAction func num3(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(3)
    }
    
    @IBAction func num4(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(4)
    }
    
    @IBAction func num5(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(5)
    }
    
    @IBAction func num6(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(6)
    }
    
    @IBAction func num7(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(7)
    }
    
    @IBAction func num8(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(8)
    }
    
    @IBAction func num9(_ sender: UIButton) {
        checkZero()
        labelNum.text! += String(9)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }
    

}

