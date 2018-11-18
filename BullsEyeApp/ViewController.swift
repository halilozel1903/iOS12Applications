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
    var targetValue : Int = 0
    
    @IBOutlet weak var slider : UISlider! // slider nesnesi
    @IBOutlet weak var targetLabel : UILabel! // label nesnesi
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let roundedValue = slider.value.rounded() // double değeri int değere göre yuvarladı.
        currentValue = Int(roundedValue) // yuvarlanan değeri atadık.
        startNewRound()
    }
    

    // Alert işlemlerinin yapıldığı fonksiyon
    
    @IBAction func showAlert(){
        
        // print("Hello iOS 12 Programming Course")
        
        let message = "The value of the slider is now : \(currentValue)"+"\n The target value is : \(targetValue)" // değeri ekranda gösterme
        
        // alert nesnesi tanımlandı.
        let alert = UIAlertController(title: "Hello World !", message: message, preferredStyle: .alert)
        
        // action olusturme
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        
        // alert nesnesine action ekleme
        alert.addAction(action)
        
        // alerti ekranda gösterme
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    
    // slider işlemlerinin yapıldığı fonksiyon
    @IBAction func sliderMoved(_ slider: UISlider){

        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        
       // print("The value of the slider is now : \(slider.value)") // slider değeri
       // print("The rounded value of the slider is now : \(roundedValue)") // yuvarlanmış hali
        
    }
    
    // yeni slider ile  değeri ne olacak onu belirtiyoruz.
    func startNewRound(){
        
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    // label değerini güncelleme
    func updateLabels(){
        targetLabel.text = String(targetValue)
    }
    


}

