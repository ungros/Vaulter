//
//  EyeButton.swift
//  Vaulter
//
//  Created by Roman on 09.02.2023.
//

import UIKit

final class EyeButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupEyeButton()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addActions() {
        
    }
    
    
    private func setupEyeButton() {
        setImage(UIImage(systemName: "eye"), for: .normal)
        tintColor = R.Colors.cardColor
        
        widthAnchor.constraint(equalToConstant: 40).isActive = true
        //isEnabled = false
    }
}


