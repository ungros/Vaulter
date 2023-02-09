//
//  PasswordButton.swift
//  Vaulter
//
//  Created by Roman on 09.02.2023.
//

import UIKit

final class PasswordButton: UITextField {
    
    
     init(placeholder: String) {
         super.init(frame: .zero)
         
         textFieldStyle()
     }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private  func textFieldStyle() {
        
        textColor = R.Colors.cardColor
        //textAlignment = .center
        layer.cornerRadius = 17
        layer.backgroundColor = .none
        layer.borderWidth = 2
        layer.borderColor = R.Colors.cardColor.cgColor
        
        attributedPlaceholder = NSAttributedString(string: R.Strings.GuardVC.placeholder, attributes: [
            NSAttributedString.Key.foregroundColor: R.Colors.cardColor])
        font = .boldSystemFont(ofSize: 18)
        
        
    }
}

