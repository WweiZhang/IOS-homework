//
//  ViewController.swift
//  作业九--二三题
//
//  Created by student on 2018/11/10.
//  Copyright © 2018年 zw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "action sheet", message: "please choose color", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "RED", style: .default, handler: { (action) in self.view.backgroundColor = UIColor.red}))
        
        alert.addAction(UIAlertAction(title: "GREEN", style: .default, handler: { (action) in self.view.backgroundColor = UIColor.green}))
        
        alert.addAction(UIAlertAction(title: "BLUE", style: .default, handler: { (action) in self.view.backgroundColor = UIColor.blue}))
        
         alert.addAction(UIAlertAction(title: "WHILE", style: .default, handler: { (action) in self.view.backgroundColor = UIColor.white}))
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "login message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "LOGIN", style: .default, handler: { (action) in
            
            guard let username = alert.textFields?.first?.text, let password = alert.textFields?.last?.text else{
                return
            }
//            print("\(username)  \(password)")
            
        }))
        
        alert.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: { (action) in
            
        }))
        
        alert.addTextField { (textField) in
            textField.placeholder = "your user name?"
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "your password?"
            textField.isSecureTextEntry = true
        }
        
        present(alert, animated: true, completion: nil)
    }
}

