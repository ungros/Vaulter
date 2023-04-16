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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(faceIDButton)
        
        faceIDButton.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.size.equalTo(200)
        }
    }
    
}

extension GuardVC {
  
}

