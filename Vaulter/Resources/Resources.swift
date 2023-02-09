//
//  Resources.swift
//  Vaulter
//
//  Created by Roman on 08.01.2023.
//

import UIKit

enum R {
    
    enum Colors {
        static let background = UIColor(hexString: "#F8F9F9")
        static let navigators = UIColor.white
        static let colorAccent = UIColor(hexString: "#020B11")
        static let separator = UIColor(hexString: "#E8ECEF")
        
        static let rootView = UIColor(hexString: "484F53")
        
        static let cardColor = UIColor(hexString: "3FAEFF")
    }
    
    enum Strings {
        
        
        enum GuardVC {
            
            static let placeholder = "Use Password"
        }
        
        enum TabBar {
            static let foldersVC = "Folders"
            static let homeVC = "Home"
            static let settingsVC = "Settings"
            
        }
        
        
    }
    
    enum Images {
        
        enum TabBar {
            static let foldersVC = UIImage(systemName: "folder.fill")
            static let homeVC = UIImage(systemName: "homekit")
            static let settingsVC = UIImage(systemName: "folder.fill.badge.gearshape")
            
        }
        
        static let guardButton  = UIImage(systemName: "faceid")
    }
    
    
    
}
