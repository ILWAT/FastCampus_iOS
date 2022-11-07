//
//  ViewController.swift
//  TodoList
//
//  Created by 문정호 on 2022/10/11.
//

import UIKit

class ViewController: UIViewController {
    var tasks = [Task]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func tapEditButton(_ sender: UIBarButtonItem) {
        
    }
    
    @IBAction func tapAddButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "할 일 등록", message: nil, preferredStyle: .alert)
        //alert은 가운데 띄워지는 안내창 ActionSheet는 하단에 메뉴바 같이 생긴 안내창
        let registerButton = UIAlertAction(title: "등록", style: .default, handler: { [weak self] _ in
            alert.textFields?[0].text
        })
        let cancelButton = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(registerButton)
        alert.addAction(cancelButton)
        alert.addTextField(configurationHandler: {textField in
            textField.placeholder = "할 일을 입력해주세요"
        })
        self.present(alert,animated: true,completion: nil)
    }
    

}

