//
//  AddController.swift
//  TodoApp
//
//  Created by 伊藤潤人 on 2018/07/10.
//  Copyright © 2018年 hirotoshin. All rights reserved.
//

import UIKit

var x = [String]()

class AddController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    
    @IBAction func TodoButton(_ sender: Any) {
        
        x.append(textfield.text!)
        
        textfield.text = ""
        
        //UserDefaultsはデータベース的なもの（少ないデータの保存）
        UserDefaults.standard.set(x, forKey: "TodoList")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
