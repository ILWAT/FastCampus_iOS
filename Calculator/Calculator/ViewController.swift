//
//  ViewController.swift
//  Calculator
//
//  Created by 문정호 on 2022/10/03.
//

import UIKit

enum Operation {
    case Add
    case subtract
    case Divide
    case Multiply
    case unknown
}

class ViewController: UIViewController {
    var displayNumber = ""
    var firstOperand = "" //첫번째 피연산자
    var secondeOperand = "" //두번째 피연산자
    var result = "" //결과값
    var currentOperation: Operation = .unknown //현재 연산

    
    @IBOutlet weak var numberOutputLabel: UILabel!
    //임의로 코드화 해버리기
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
        //버튼별 모서리 둥글게 설정
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

    @IBAction func tapNumberButton(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else { return }
        if self.displayNumber.count < 9 {
            self.displayNumber+=numberValue
            self.numberOutputLabel.text = self.displayNumber
        }
    }
    
    @IBAction func tapClearButton(_ sender: UIButton) {
        self.displayNumber = ""
        self.firstOperand = ""
        self.secondeOperand = ""
        self.result = ""
        self.currentOperation = .unknown
        self.numberOutputLabel.text = "0"
    }
    
    @IBAction func tapDotButton(_ sender: UIButton) {
        if self.displayNumber.count < 8, self.displayNumber.contains(".") {
            self.displayNumber += self.displayNumber.isEmpty ? "0." : "."
            self.numberOutputLabel.text  = self.displayNumber
        }
    }
    
    @IBAction func tapDivideButton(_ sender: UIButton) {
        self.operation(.Divide)
    }
    @IBAction func tapMultiplyButton(_ sender: UIButton) {
        self.operation(.Multiply)
    }
    @IBAction func tapSubtractButton(_ sender: UIButton) {
        self.operation(.subtract)
    }
    @IBAction func tapAddButton(_ sender: UIButton) {
        self.operation(.Add)
    }
    @IBAction func tapEqualButton(_ sender: UIButton) {
        self.operation(self.currentOperation)
    }
    
    func operation (_ operation: Operation ) {
        if self.currentOperation != .unknown {
            if self.displayNumber.isEmpty{
                self.secondeOperand = self.displayNumber
                self.displayNumber = ""
                
                guard let firstOperand = Double(self.displayNumber) else {return}
                guard let secondOperand = Double(self.secondeOperand) else {return}
                
                switch self.currentOperation {
                case .Add:
                    self.result = "\(firstOperand + secondOperand)"
                case .subtract:
                    self.result = "\(firstOperand - secondOperand)"
                case .Divide:
                    self.result = "\(firstOperand / secondOperand)"
                case .Multiply:
                    self.result = "\(firstOperand * secondOperand)"
                default:
                    break
                }
                
                if let result = Double(self.result), result.truncatingRemainder(dividingBy: 1) == 0 {
                    slef.result = "\((Int)result)"
                }
                self.firstOperand = self.result
                self.numberOutputLabel.text = self.result
                
            }
            
        } else {
            self.firstOperand = self.displayNumber
            self.currentOperation = operation
            self.displayNumber = ""
        }
    }
    
    
    
    
}

