//
//  ViewController.swift
//  add2
//
//  Created by 5759 on 16/3/17.
//  Copyright © 2016年 5759. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var z: UITextField!
    @IBAction func add(sender: UIButton) {
        var a:Double!=0
        var b:Double!=0
        var c:Double!=0
        if (!x.text!.isEmpty){
            a=(x.text! as NSString).doubleValue
        }
        if (!y.text!.isEmpty){
            b=(y.text! as NSString).doubleValue
        }
        c=a+b
        z.text="\(c)"
        //z.text=x.text!+y.text!
    }
    
    
    @IBOutlet weak var x2: UITextField!
    @IBOutlet weak var y2: UITextField!
    @IBOutlet weak var z2: UITextField!
    @IBAction func miinus(sender: UIButton) {
        
        var a:Double!=0
        var b:Double!=0
        var c:Double!=0
        if (!x.text!.isEmpty){
            a=(x.text! as NSString).doubleValue
        }
        if (!y.text!.isEmpty){
            b=(y.text! as NSString).doubleValue
        }
        c=a+b
        z.text="\(c)"
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    //存储数字字符串
    var operand1 :String = ""
    var operand2 :String = ""
    
    //存储运算符字符串
    var operator :String = ""
    
    
    
    @@ -62,8 +31,33 @@ class ViewController: UIViewController {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    //设置命令
    @IBAction func didClicked(sender: UIButton) {
        //获取按钮名称
        //print("\(sender.currentTitle)")
        
        let value = sender.currentTitle
        
        if value == "+" || value == "-" || value == "×" || value == "÷" ||
        if value == "+" || value == "-" || value == "×" || value == "÷"
        {
            print("\(value)")
            //print("\(value)")
            operator = value
        }
        else
        {
            print("no value")
        }
        
        
        
    }
    
    
    
}
