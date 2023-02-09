//
//  FaceIDButton.swift
//  Vaulter
//
//  Created by Roman on 09.02.2023.
//

import UIKit

final class FaceIDButton: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        buttonStyle()
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func buttonStyle() {
        backgroundColor = R.Colors.cardColor
        layer.cornerRadius = 17
        layer.borderWidth = .nan
        layer.borderColor = .none
        
        setTitleColor(.white, for: .normal)
        setTitle(" Use FaceID", for: .normal)
        titleLabel?.font = UIFont(name: "", size: 44)
    
        setImage(R.Images.guardButton, for: .normal)
        imageView?.tintColor = .white
    }
}


private extension FaceIDButton {
    
    func setupShadow() {
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        layer.shadowRadius = 6
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = true
    }
}
