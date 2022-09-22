//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 문정호 on 2022/09/22.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
