//
//  ViewController.swift
//  add2
//
//  Created by 5759 on 16/3/17.
//  Copyright © 2016年 5759. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    //存储数字字符串
    var operand1 :String = ""
    var operand2 :String = ""
    
    //存储运算符字符串
    var operator1 :String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    


    //设置命令
    @IBAction func didClicked(sender: UIButton) {
        //获取按钮名称
        //print("\(sender.currentTitle)")
        
        let value = sender.currentTitle
        
        if value == "+" || value == "-" || value == "×" || value == "÷"
        {
            operator1 = value!
            return
        }
        else if value == "="
        {
            
            
            var result = 0
            switch operator1
            {
            case "+":
                result = Int(operand1)! + Int(operand2)!
                //result = operand1.toInt()! + operand2.toInt()!
            
            case "-":
                result = Int(operand1)! - Int(operand2)!
                
            case "×":
                result = Int(operand1)! * Int(operand2)!
                
            case "÷":
                result = Int(operand1)! / Int(operand2)!
            
                
            case "C":
                result = 0
                
            default:
                result = 0
            }
            
            resultLabel.text = "\(result)"
            return
        }
        
        if operator1 == ""
        {
            operand1 = operand1 + value!
            resultLabel.text = operand1
        }
        else
        {
            operand2 = operand2 + value!
            resultLabel.text = operand2

        }
        
    }
    
    
    
}



