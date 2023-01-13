//
//  TabBarController.swift
//  Vaulter
//
//  Created by Roman on 07.01.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrangeSetVC()
        setupTB()
    }
}

extension TabBarController {
    
    private func arrangeSetVC() {
        
        viewControllers = [
            setVC(viewController: FoldersVC(), title: R.Strings.TabBar.foldersVC, image: R.Images.TabBar.foldersVC),
            setVC(viewController: HomeVC(), title: R.Strings.TabBar.homeVC, image: R.Images.TabBar.homeVC),
            setVC(viewController: SettingsVC(), title: R.Strings.TabBar.settingsVC, image: R.Images.TabBar.settingsVC)
        ]
    }
    
    private func setVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setupTB() {
        
        selectedIndex = 1
        
        //tabBar.layer.borderColor =
        //tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        tabBar.backgroundColor = .red
    }
}
