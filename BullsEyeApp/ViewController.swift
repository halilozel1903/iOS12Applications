//
//  ViewController.swift
//  BullsEyeApp
//
//  Created by Halil Özel on 4.11.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var currentValue : Int = 0 // slider değer tutucu
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    // Alert işlemlerinin yapıldığı fonksiyon
    
    @IBAction func showAlert(){
        
        // print("Hello iOS 12 Programming Course")
        
        let message = "The value of the slider is now : \(currentValue)" // değeri ekranda gösterme
        
        // alert nesnesi tanımlandı.
        let alert = UIAlertController(title: "Hello World !", message: message, preferredStyle: .alert)
        
        // action olusturme
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        
        // alert nesnesine action ekleme
        alert.addAction(action)
        
        // alerti ekranda gösterme
        present(alert, animated: true, completion: nil)
        
    }
    
    
    // slider işlemlerinin yapıldığı fonksiyon
    @IBAction func sliderMoved(_ slider: UISlider){

        print("The value of the slider is now : \(slider.value)") // slider değeri
        let roundedValue = slider.value.rounded() // double değeri int değere göre yuvarladı.
        print("The rounded value of the slider is now : \(roundedValue)") // yuvarlanmış hali
        currentValue = Int(roundedValue) // yuvarlanan değeri atadık.
        
    }
    


}

