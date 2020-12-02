//
//  CustomUI.swift
//  VerificationProject
//
//  Created by nour on 29/11/2020.
//

import UIKit

class CustomUI: UITextField  {

    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        clipsToBounds = true
        
    }
    
}
