//
//  ViewController.swift
//  window shopper
//
//  Created by Ghoul Mehdi on 25/06/2018.
//  Copyright © 2018 Ghoul Mehdi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var Hourlywage: CurrencyTextField!
    @IBOutlet weak var Itemprice: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal )
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        Hourlywage.inputAccessoryView = calcBtn
        Itemprice.inputAccessoryView = calcBtn
        
        
        
        
    }
    @objc func calculate(){
        print("hello world")
    }
 
    

}

