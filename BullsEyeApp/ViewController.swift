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
    

    // Alert işlemlerinin yapıldığı fonksiyon
    
    @IBAction func showAlert(){
        
        // print("Hello iOS 12 Programming Course")
        
        // alert nesnesi tanımlandı.
        let alert = UIAlertController(title: "Hello World !", message: "This is my first app", preferredStyle: .alert)
        
        // action olusturme
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        
        // alert nesnesine action ekleme
        alert.addAction(action)
        
        // alerti ekranda gösterme
        present(alert, animated: true, completion: nil)
        
    }
    
    
    // slider işlemlerinin yapıldığı fonksiyon
    @IBAction func sliderMoved(_ slider: UISlider){

        print("The value of the slider is now : \(slider.value)")
        
    }
    


}

