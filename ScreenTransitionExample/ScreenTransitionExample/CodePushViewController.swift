//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 문정호 on 2022/09/22.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}