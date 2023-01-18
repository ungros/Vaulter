//
//  RootCollectionViewController.swift
//  Vaulter
//
//  Created by Roman on 18.01.2023.
//

import UIKit

class RootCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

@objc extension RootCollectionViewController {
    func setupViews() {}
    func constraintViews() {}
    func configureAppearence() {
        view.backgroundColor = R.Colors.background
    }
}
