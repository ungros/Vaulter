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
        
        let listLayoutConfig = configureAppearence()
        collectionView.collectionViewLayout = listLayoutConfig
        
        let cellRegistration = UICollectionView.CellRegistration{ (cell: UICollectionViewListCell, indexPath: IndexPath, itemIdentifier: String) in
            
        }
    }
}

@objc extension RootCollectionViewController {
    
    func setupViews() {}
    func constraintViews() {}
    
    func configureAppearence() -> UICollectionViewCompositionalLayout {
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = R.Colors.background
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
}
