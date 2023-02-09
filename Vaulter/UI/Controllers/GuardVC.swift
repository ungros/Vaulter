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



override func viewDidLoad() {
    
    super.viewDidLoad()
    
    view.addSubview(faceIDButton)
    view.addSubview(passwordButton)
    
    setupConstraints()
 
    view.backgroundColor = R.Colors.background
    
}

}

private extension GuardVC {
    
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
