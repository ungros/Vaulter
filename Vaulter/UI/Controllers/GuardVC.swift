//
//  GuardVC.swift
//  Vaulter
//
//  Created by Roman on 09.02.2023.
//

import UIKit
import SnapKit

final class GuardVC: RootViewController {
    
    let faceIDButton = FaceIDButton()
    let passwordButton = PasswordButton(placeholder: "Use Password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
}

extension GuardVC {
  
    internal override func setup() {
        setupVC()
        setupFaceIDButton()
        setupPasswordButton()
    }
    
    private func setupVC() {
        view.backgroundColor = R.Colors.background
    }
    
    private func setupFaceIDButton() {
        
        view.addSubview(faceIDButton)
        
        faceIDButton.layer.cornerRadius = 20
        
        faceIDButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.width.equalTo(250)
            $0.bottom.equalToSuperview().inset(250)
            $0.height.equalTo(40)

        }
        
    }
    
    private func setupPasswordButton() {
        
        view.addSubview(passwordButton)
        
        passwordButton.layer.cornerRadius = 20
        
        passwordButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.width.equalTo(250)
            $0.bottom.equalTo(faceIDButton).inset(50)
            $0.height.equalTo(40)

        }
        
    }
    
}

