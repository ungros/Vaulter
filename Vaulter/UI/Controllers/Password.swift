//
//  PasswordButton.swift
//  Vaulter
//
//  Created by Roman on 09.02.2023.
//

import UIKit

final class PasswordButton: UITextField {
    
    private let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 40)
    
     init(placeholder: String) {
         super.init(frame: .zero)
         
         textFieldStyle()
     }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    
    
    private  func textFieldStyle() {
        
        textColor = R.Colors.cardColor
        //textAlignment = .center
        //layer.cornerRadius = 17
        layer.backgroundColor = .none
        layer.borderWidth = 3
        layer.borderColor = R.Colors.cardColor.cgColor
        
        attributedPlaceholder = NSAttributedString(string: R.Strings.GuardVC.placeholder, attributes: [
            NSAttributedString.Key.foregroundColor: R.Colors.cardColor, ])
        font = .boldSystemFont(ofSize: 17)
        
        isSecureTextEntry = true
    }
}

