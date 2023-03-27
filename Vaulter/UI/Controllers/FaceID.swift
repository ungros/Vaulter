//
//  FaceIDButton.swift
//  Vaulter
//
//  Created by Roman on 09.02.2023.
//

import UIKit
import LocalAuthentication

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
        layer.borderWidth = 2
        layer.borderColor = R.Colors.cardColor.cgColor

        
        setTitleColor(.white, for: .normal)
        setTitle("Use FaceID", for: .normal)
        
        let faceIdImage = UIImage(systemName: "faceid")
        faceIdImage?.withTintColor(.red)
        
        
        setImage(faceIdImage?.withRenderingMode(.alwaysOriginal), for: .normal)
       
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

private extension FaceIDButton {
    
    func faceIDSetup() {
        let context = LAContext()
        var error: NSError?
        
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Please authorize with Face ID"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason
            ) { success, error in
                DispatchQueue.main.async {
                    guard success == true, error == nil else {
                        return // made attention status
                    }
                }
            }
        }
        
    }
}
