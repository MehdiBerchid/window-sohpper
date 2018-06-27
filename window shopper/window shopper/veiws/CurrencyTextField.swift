//
//  CurrencyTextField.swift
//  window shopper
//
//  Created by Ghoul Mehdi on 25/06/2018.
//  Copyright © 2018 Ghoul Mehdi. All rights reserved.
//

import UIKit
@IBDesignable

class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size ))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.4024793804, green: 0.4024793804, blue: 0.4024793804, alpha: 0.7606752997)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.225775823, green: 0.225775823, blue: 0.225775823, alpha: 0.7440603596)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formate = NumberFormatter()
        formate.numberStyle = .currency
        formate.locale = .current
        currencyLbl.text = formate.currencySymbol
        addSubview(currencyLbl)
        
        
        
    }
    
    
    
    
    
    override func prepareForInterfaceBuilder() {
        CustomizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        CustomizeView()
        }
    
    func CustomizeView() {
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 5.00
            textAlignment = .center
            clipsToBounds = true
            if let p = placeholder {
                let place = NSAttributedString(string: p , attributes: [ .foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    

}
