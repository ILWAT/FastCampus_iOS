//
//  ViewController.swift
//  Calculator
//
//  Created by 문정호 on 2022/10/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonPoint: UIButton!
    @IBOutlet weak var buttonResult: UIButton!
    @IBOutlet weak var buttonMul: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMod: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonRound()
        
    }
    
    func buttonRound() {
        buttonAC.layer.cornerRadius = buttonAC.frame.height / 2
        button9.layer.cornerRadius = button9.frame.height / 2
        button8.layer.cornerRadius = button8.frame.height / 2
        button7.layer.cornerRadius = button7.frame.height / 2
        button6.layer.cornerRadius = button6.frame.height / 2
        button5.layer.cornerRadius = button5.frame.height / 2
        button4.layer.cornerRadius = button4.frame.height / 2
        button3.layer.cornerRadius = button3.frame.height / 2
        button2.layer.cornerRadius = button2.frame.height / 2
        button1.layer.cornerRadius = button1.frame.height / 2
        button0.layer.cornerRadius = button0.frame.height / 2
        buttonPlus.layer.cornerRadius = buttonPlus.frame.height / 2
        buttonPoint.layer.cornerRadius = buttonPoint.frame.height / 2
        buttonResult.layer.cornerRadius = buttonResult.frame.height / 2
        buttonMul.layer.cornerRadius = buttonMul.frame.height / 2
        buttonMinus.layer.cornerRadius = buttonMinus.frame.height / 2
        buttonMod.layer.cornerRadius = buttonMod.frame.height / 2
        
    }


}

