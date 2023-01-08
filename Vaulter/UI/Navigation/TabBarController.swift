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
            setVC(viewController: <#T##UIViewController#>, title: <#T##String#>, image: <#T##UIImage?#>),
            setVC(viewController: <#T##UIViewController#>, title: <#T##String#>, image: <#T##UIImage?#>),
            setVC(viewController: <#T##UIViewController#>, title: <#T##String#>, image: <#T##UIImage?#>)
        ]
    }
    
    private func setVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setupTB() {
        selectedIndex = 1
        
        tabBar.layer.borderColor = .green.cgColor()
        
        
    }
}
