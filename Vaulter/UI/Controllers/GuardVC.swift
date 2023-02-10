//
//  GuardVC.swift
//  Vaulter
//
//  Created by Roman on 09.02.2023.
//

import UIKit

final class GuardVC: RootViewController {
    
    private let faceIDButton = FaceIDButton()
    private let passwordButton = PasswordButton(placeholder: R.Strings.GuardVC.placeholder)
    private let eyeButton = EyeButton()
    
    private var isPrivate = true
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = R.Colors.background
        view.addSubview(faceIDButton)
        view.addSubview(passwordButton)
        
        setupConstraints()
        setupPasswordTextField()
        
        addActions()
    }
    
    @objc
    private func displayText() {
        let imageName = isPrivate ? "eye" : "eye.splash"
       
        passwordButton.isSecureTextEntry.toggle()
        eyeButton.setImage(UIImage(systemName: imageName), for: .normal)
    
        isPrivate.toggle()
    }
}

private extension GuardVC {
    
    func addActions() {
        eyeButton.addTarget(self, action: #selector(displayText), for: .touchUpInside)
    }
    
    func setupPasswordTextField() {
        
        passwordButton.delegate = self
        passwordButton.rightView = eyeButton
        passwordButton.rightViewMode = .always
    }
    
    
    func setupConstraints() {
        
        faceIDButton.translatesAutoresizingMaskIntoConstraints = false
        passwordButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            faceIDButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250),
            faceIDButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            faceIDButton.heightAnchor.constraint(equalToConstant: 50),
            faceIDButton.widthAnchor.constraint(equalToConstant: 250),
            
            passwordButton.centerYAnchor.constraint(equalTo: faceIDButton.centerYAnchor, constant: 65),
            passwordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordButton.heightAnchor.constraint(equalToConstant: 50),
            passwordButton.widthAnchor.constraint(equalToConstant: 250),
            
            
            
            
        ])
        
    }
}

extension GuardVC: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        guard let text = textField.text else {return}
        eyeButton.isEnabled = !text.isEmpty
        eyeButton.tintColor = R.Colors.cardColor
    }
}
