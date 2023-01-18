//
//  HomeVC.swift
//  Vaulter
//
//  Created by Roman on 13.01.2023.
//

import UIKit

final class HomeVC: RootCollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listLayoutConfig = configureAppearence()
        collectionView.collectionViewLayout = listLayoutConfig
    }
}

extension HomeVC {
    
}

