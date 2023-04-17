//
//  RootCollectionViewController.swift
//  Vaulter
//
//  Created by Roman on 18.01.2023.
//

import UIKit

open class RootCollectionViewController: UICollectionViewController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        let listLayoutConfig = configureAppearence()
        collectionView.collectionViewLayout = listLayoutConfig
        
        _ = UICollectionView.CellRegistration{ (cell: UICollectionViewListCell, indexPath: IndexPath, itemIdentifier: String) in
            
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
