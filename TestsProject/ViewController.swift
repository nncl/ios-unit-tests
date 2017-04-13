//
//  ViewController.swift
//  TestsProject
//
//  Created by Usuário Convidado on 12/04/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var lbUserData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lbUserData.text = ""
    }

    @IBAction func presentUser(_ sender: Any) {
        // "Nome: Caue Almeida"\nIdade: 22 anos
        let name = getName(name: tfName.text!)
        let age = getAge(age: Int(tfAge.text!)!)
        lbUserData.text = "\(name)\n\(age)"
    }
    
    func getName(name: String) -> String {
        return "Nome: \(name)"
    }
    
    func getAge(age: Int) -> String {
        if age > 25 {
            return "Idade (senhor): \(age) anos"
        } else {
            return "Idade: \(age) anos"
        }
    }

}

