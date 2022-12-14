//
//  ViewController.swift
//  LEDBoard
//
//  Created by 문정호 on 2022/09/24.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text{
            self.contentsLabel.text = text
        }
        self.contentsLabel.textColor = textColor
        self.contentsLabel.backgroundColor = backgroundColor
    }
    
    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
            settingViewController.ledText = self.contentsLabel.text
            settingViewController.textColor = self.contentsLabel.textColor
            settingViewController.backgroundColor = self.contentsLabel.backgroundColor
        }
    

    }

}

