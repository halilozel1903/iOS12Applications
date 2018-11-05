//
//  ViewController.swift
//  BullsEyeApp
//
//  Created by Halil Özel on 4.11.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showAlert(){
        
        // print("Hello iOS 12 Programming Course")
        
        let alert = UIAlertController(title: "Hello World !", message: "This is my first app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }


}

