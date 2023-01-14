//
//  NavBarController.swift
//  Vaulter
//
//  Created by Roman on 14.01.2023.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBar()
    }
}

extension NavBarController {
    
    private func configureNavBar() {
        
        view.backgroundColor = R.Colors.navigators
        navigationBar.isTranslucent = false
    }
}
