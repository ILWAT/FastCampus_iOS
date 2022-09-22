//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 문정호 on 2022/09/22.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
       //self.navigationController?.popToRootViewController(animated: true) //rootViewController로 pop하는 화면전환
    }
    
}
